import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:limbus_flutter_2/main_screen/line.dart';
import 'package:limbus_flutter_2/resource/colors.dart';

import '../main_screen/widgets.dart';

class ComingScreen extends StatefulWidget {
  const ComingScreen({Key? key}) : super(key: key);

  @override
  State<ComingScreen> createState() => _ComingScreenState();
}

class _ComingScreenState extends State<ComingScreen> {

  var listComing = [2, 1, 2, 1, 1, 2, 2, 2, 1, 1];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2296F3),

        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 50,
          title: Text('Список приходов', style: textStyleWhite(largeSize),),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/choose_services');
            },
            child: const Icon(Icons.arrow_back),
          ),
        ),


        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)),
          ),

          child: Column(children: [

            //create button
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/create_coming');
              },
              child: Container(
                margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                width: allSize(context, 'w'),
                height: 42,
                decoration: BoxDecoration(
                    color: mainBlue,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: mainBlue, width: 1)
                ),
                alignment: Alignment.center,
                child: Text('Создать', style: textStyleWhite(mainSize + 1)),
              ),
            ),

            const SizedBox(height: 2,),

            const Line(),

            //search
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                color: Colors.black.withOpacity(0.0),
                width: MediaQuery.of(context).size.width,
                height: 42,
                child: TextField(
                    keyboardType: TextInputType.text,
                    onChanged: (text) {
                      //print(textFieldNumber);
                    },
                    style: textStyleBlack(mainSize),
                    decoration: textFieldDecoration('Номер накладной')
                )
            ),

            //filter
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: allSize(context, 'w') - 42 * 3 - 6 * 3 - 32,
                        height: 42,
                        padding: const EdgeInsets.only(left: 6),
                        decoration: const BoxDecoration(
                            color: backgroundField,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        alignment: Alignment.centerLeft,
                        child: Text('Поставщик', style: textStyleBlack(mainSize)),
                      ),
                    ],

                  ),





                  Container(
                    width: 42,
                    height: 42,
                    color: Colors.black.withOpacity(0.0),
                    child: InkWell(
                      child: SvgPicture.asset('assets/images/hide.svg'),
                      onTap: () {
                        setState(() {});
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

            const SizedBox(height: 4,),

            Expanded(child: ListView.builder(
              itemCount: listComing.length,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Expandable(
                        boxShadow: const [],
                        centralizeFirstChild: false,
                        backgroundColor: Colors.white,
                        arrowWidget: SizedBox(
                          width: 36,
                            height: 36,
                            child: SvgPicture.asset('assets/images/arrow_expanded_down.svg')),
                        arrowLocation: ArrowLocation.left,

                        firstChild: SizedBox(
                          width: allSize(context, 'w') - 80,
                          height: 52,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(width: 6,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('ООО "Поставщик 1"', style: textStyleBlack600(mainSize),),
                                      const SizedBox(height: 5,),
                                      Text('Сумма прихода:', style: textStyleBlueColor(secSize),)
                                    ],),
                                ],
                              ),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('340 сом', style: textStyleBlueColor600(mainSize),),
                                  const SizedBox(height: 3,),
                                ],),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                      onTap: (){
                                        // bottomSheetShow();
                                        },
                                      child: listComing[index] == 2
                                          ? SvgPicture.asset('assets/images/edit.svg')
                                          : const SizedBox(width: 42,)
                                  ),
                                  const SizedBox(width: 4,),
                                  InkWell(
                                      onTap: (){
                                        // bottomSheetShow();
                                        },
                                      child: SvgPicture.asset('assets/images/info_icon.svg')
                                  ),
                                ],)
                            ],),
                        ),


                        secondChild: Container(
                          width: allSize(context, 'w'),
                          margin: EdgeInsets.only(right: 16, left: allSize(context, 'h') - (allSize(context, 'h') - 70)),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Адрес:', style: textStyleBlack(secSize),),
                                  Text('Контакты:', style: textStyleBlack(secSize),),
                                  Text('Дата:', style: textStyleBlack(secSize),),
                                  Text('Номер:', style: textStyleBlack(secSize),),
                                ],),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('Таджикистан, Душанбе', style: textStyleBlack600(secSize),),
                                  Text('+992 12 343 67-89', style: textStyleBlack600(secSize),),
                                  Text('20.04.2020', style: textStyleBlack600(secSize),),
                                  Text('1078', style: textStyleBlack600(secSize),),
                                ],)

                            ],),
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 0.1,
                        margin: const EdgeInsets.only(top: 4, bottom: 4),
                        color: const Color(0xFF282626),
                      )
                    ],
                  );
                }))

          ],),
        ),

    );
  }
}
