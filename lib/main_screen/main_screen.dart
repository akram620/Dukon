import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'dart:core';
import 'package:limbus_flutter_2/main_screen/app_bar_main.dart';
import 'package:limbus_flutter_2/main_screen/line.dart';
import 'package:limbus_flutter_2/main_screen/widgets.dart';
import 'package:limbus_flutter_2/main_screen/list_view_in_main_screen.dart';
import 'package:limbus_flutter_2/main_screen/reciept.dart';
import 'package:limbus_flutter_2/resource/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static bool isVisibility = true;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  TextEditingController textControllerNumber = TextEditingController();


  //for date
  late String t1;
  int how = 0;
  String time1 = DateFormat('y-MM-dd').format(DateTime.now()).toString();
  String time2 = DateFormat('y-MM-dd').format(DateTime.now()).toString();

  void selectDate() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2055))
        .then((DateTime? value) {
      if (value != null) {
        t1 = DateFormat('y-MM-dd').format(value).toString();
        setState(() {
          if (how == 1) {
            time1 = t1;
          } else {
            time2 = t1;
          }
        });
      }
    });
  }
  //end for date


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2296F3),
        // backgroundColor: const Color(0xFFffffff),
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 60,
          title: Text('Мои продажи', style: textStyleWhite(16),),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/choose_services');
            },
            child: const Icon(Icons.arrow_back),
          ),
          actions: const [
            AppBarMain(),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
          ),
          child: Column(
            children:  [

              // search panel
              Container(
          padding: const EdgeInsets.all(0.0),
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 12, bottom: 8),
          height: 42,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // number
              Container(
                  color: Colors.black.withOpacity(0.0),
                  width: MediaQuery.of(context).size.width - 32 - 84 - 12 - 32 - 10,
                  height: 42,
                  // padding: ,
                  child: TextField(
                      controller: textControllerNumber,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                      onChanged: (text) {
                        //print(textFieldNumber);
                      },
                      style: textStyleBlack(mainSize),
                      decoration: textFieldDecoration('Номер чека'))),
              // visibil widgets
              Container(
                width: 42,
                height: 42,
                color: Colors.black.withOpacity(0.0),
                child: InkWell(
                  child: SvgPicture.asset('assets/images/hide.svg'),
                  onTap: () {
                    setState(() {
                      MainScreen.isVisibility = !MainScreen.isVisibility;
                    });
                  },
                ),
              ),

              // clear
              Container(
                width: 42,
                height: 42,
                color: Colors.black.withOpacity(0.0),
                child: InkWell(
                  child: SvgPicture.asset('assets/images/filter.svg'),
                  onTap: () {
                    setState(() {
                      textControllerNumber.text = '';
                    });
                  },
                ),
              ),

              // search
              Container(
                width: 42,
                height: 42,
                color: Colors.black.withOpacity(0.0),
                child: InkWell(
                  child: SvgPicture.asset('assets/images/search.svg'),
                  onTap: () {
                  },
                ),
              ),
            ],
          ),
        ),
              const Line(),

              Visibility(
                visible: MainScreen.isVisibility,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    // From date
                    Container(
                      padding: const EdgeInsets.only(left: 0),
                      height: 42,
                      width: MediaQuery.of(context).size.width / 2 - 16 - 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'От',
                            style: textStyleBlack(mainSize),
                          ),
                          InkWell(
                              onTap: () {
                                how = 1;
                                selectDate();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 42,
                                width: MediaQuery.of(context).size.width / 2 - 16 - 10 - 25,
                                decoration: const BoxDecoration(
                                    color: backgroundField,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(time1, style: textStyleBlack(mainSize)),
                                    SvgPicture.asset('assets/images/calend.svg')
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),

                    // To date
                    Container(
                      padding: const EdgeInsets.only(left: 0),
                      height: 42,
                      width: MediaQuery.of(context).size.width / 2 - 16 - 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('До', style: textStyleBlack(mainSize)),
                          InkWell(
                              onTap: () {
                                how = 2;
                                selectDate();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 42,
                                width: MediaQuery.of(context).size.width / 2 - 16 - 10 - 25,
                                decoration: const BoxDecoration(
                                    color: backgroundField,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(time2, style: textStyleBlack(mainSize)),
                                    SvgPicture.asset('assets/images/calend.svg')
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
              ]),
                  ],
                ),),

              Row(children: [
                Container(
                    margin: const EdgeInsets.only(top: 10, left: 20, bottom: 6),
                    child: Text(time1 + ' / ' + time2, style: textStyleBlack600(mainSize),)),
              ],),

              const RecieptClass(),
              // const Line(),
              const ListViewInMainScreen(),

            ],
          ),
        ),

        floatingActionButton: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/oformit_prodaja');
          },
          child: Container(
              alignment: Alignment.center,
              height: 42,
              width: MediaQuery.of(context).size.width - 32,
              decoration: BoxDecoration(
                  color: mainBlue,
                  borderRadius: BorderRadius.circular(10.0)),
              child: const Text(
                'Оформить продажу',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.2,
                    fontFamily: 'OpenSans-Regular'),
              )),
        )
    );
  }
}
