import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:limbus_flutter_2/main_screen/line.dart';

import '../main_screen/widgets.dart';
import '../resource/colors.dart';

class CreateComing extends StatefulWidget {
  const CreateComing({Key? key}) : super(key: key);

  @override
  State<CreateComing> createState() => _CreateComingState();
}

class _CreateComingState extends State<CreateComing> {

  bool? duty = false;

  var listCreateComing = [1, 2];

  String time1 = DateFormat('y-MM-dd').format(DateTime.now()).toString();
  late String t1;

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
          time1 = t1;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2296F3),

        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 50,
          title: Text('Создание приходов', style: textStyleWhite(largeSize),),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/coming_screen');
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
              topRight: Radius.circular(20.0)
              ),
            ),

            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //date
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(' Оприходование №', style: textStyleBlack(mainSize),),

                            SizedBox(
                              width: allSize(context, 'w') - 120 - 32 - 8,
                              height: 42,
                              child: TextField(
                                  keyboardType: TextInputType.text,
                                  onChanged: (text) {
                                    //print(textFieldNumber);
                                  },
                                  style: textStyleBlack(mainSize),
                                  decoration: textFieldDecoration('Номер накладной')
                              ),
                            )

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(' Дата', style: textStyleBlack(mainSize),),

                            InkWell(
                                onTap: () {
                                  selectDate();
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(left: 4),
                                  alignment: Alignment.centerLeft,
                                  height: 42,
                                  width: 120,
                                  decoration: const BoxDecoration(
                                      color: backgroundField,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                                  child: Text(time1, style: textStyleBlack(mainSize)),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),


                  //provider
                  Container(
                    margin: const EdgeInsets.only(top: 8, left: 16),
                      child: Text(' Поставщик', style: textStyleBlack(mainSize),)),


                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: allSize(context, 'w') - 42 - 32 - 12,
                          height: 42,
                          padding: const EdgeInsets.only(left: 6),
                          decoration: const BoxDecoration(
                            color: backgroundField,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text('Поставщик1', style: textStyleBlack(mainSize)),
                        ),

                        SvgPicture.asset('assets/images/plus.svg'),


                      ],
                    ),
                  ),

                  const SizedBox(height: 4,),

                  const Line(),


                  //choose item
                  Container(
                    margin: const EdgeInsets.only(top: 6, left: 16),
                    child: Text(
                      'Выбрать товар',
                      style: textStyleBlack600(largeSize),
                    ),
                  ),



                  //line
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 0.3,
                    margin: const EdgeInsets.only(top: 4, left: 16, right: 16),
                    color: const Color(0xFF282626),
                  ),

                  const SizedBox(height: 2,),

                  //search container
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // search
                        Container(
                            color: Colors.black.withOpacity(0.0),
                            width: MediaQuery.of(context).size.width - 84 - 32 - 10,
                            height: 42,
                            // padding: ,
                            child: TextField(
                                keyboardType: TextInputType.text,
                                onChanged: (text) {
                                  //print(textFieldNumber);
                                },
                                style: textStyleBlack(mainSize),
                                decoration: textFieldDecoration('Наименование/код/штрихкод'))),

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

                        Container(
                          width: 42,
                          height: 42,
                          color: Colors.black.withOpacity(0.0),
                          child: InkWell(
                            child: SvgPicture.asset('assets/images/scanner_icon.svg'),
                            onTap: () {

                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Line(),


                  //items list
                  SizedBox(
                    width: allSize(context, 'w'),
                    height: 120,
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index){

                          return Column(
                            children: [
                              Container(
                                width: allSize(context, 'w'),
                                margin: const EdgeInsets.only(right: 16, left: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    SizedBox(
                                        width: 42,
                                        child: Image.asset('assets/images/img.jpg', width: 42, height: 42,)
                                    ),

                                    const SizedBox(width: 6,),

                                    SizedBox(
                                      width: allSize(context, 'w') - 42 - 34 - 45 - 5,

                                      child: Column(children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Танометр', style: textStyleBlack600(mainSize),),
                                            Text('120 сом', style: textStyleBlueColor600(13),),
                                          ],),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Код:', style: textStyleBlack(secSize),),
                                            Text('0102', style: textStyleBlack(mainSize),),
                                          ],),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Штрихкод:', style: textStyleBlack(secSize),),
                                            Text('5116331321', style: textStyleBlack(mainSize),),
                                          ],),


                                      ],),
                                    ),

                                    SizedBox(
                                        width: 45,
                                        child: Center(child: SvgPicture.asset('assets/images/plus_icon.svg'))
                                    )
                                  ],),
                              ),

                              const SizedBox(height: 2,)
                            ],
                          );
                        }),
                  ),


                  const Line(),

                  Container(
                    margin: const EdgeInsets.only(top: 6, left: 16),
                    child: Text(
                      'Накладной',
                      style: textStyleBlack600(largeSize),
                    ),
                  ),


                  //line
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 0.3,
                    margin: const EdgeInsets.only(top: 4, left: 16, right: 16),
                    color: const Color(0xFF282626),
                  ),


                  // list 2
                  SizedBox(
                    width: allSize(context, 'w'),
                    height: 183 * listCreateComing.length.toDouble(),
                    child: ListView.builder(
                      itemCount: listCreateComing.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index){
                        return Column(
                          children: [
                            Expandable(
                              boxShadow: const [],
                              centralizeFirstChild: false,
                              backgroundColor: Colors.white,
                              arrowWidget: SvgPicture.asset('assets/images/arrow_expanded_down.svg'),
                              arrowLocation: ArrowLocation.left,

                              firstChild: Container(
                                width: allSize(context, 'w') - 80,
                                height: 52,
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [

                                        InkWell(
                                            onTap: (){},
                                            child: Image.asset('assets/images/moska.png', width: 42,)
                                        ),

                                        const SizedBox(width: 4,),

                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [


                                            SizedBox(
                                              width: allSize(context, 'w') - 42 * 3 - 50,
                                              child: Text('Медицинские маски',
                                                maxLines: 1,
                                                softWrap: false,
                                                overflow: TextOverflow.ellipsis,
                                                style: textStyleBlack600(mainSize),),
                                            ),

                                            const SizedBox(height: 2,),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [

                                                const SizedBox(width: 10,),

                                                InkWell(
                                                  child: Container(
                                                    width: 24,
                                                    decoration: BoxDecoration(
                                                        color: Colors.black12.withAlpha(12),
                                                        borderRadius: const  BorderRadius.all(Radius.circular(8))),
                                                    height: 24,
                                                    alignment: Alignment.center,
                                                    child: const Text('-'),
                                                  ),
                                                  onTap: (){},
                                                ),

                                                const SizedBox(width: 8,),

                                                Text('2', style: textStyleBlack(mainSize)),

                                                const SizedBox(width: 8,),

                                                InkWell(
                                                  onTap: (){},
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.black12.withAlpha(12),
                                                        borderRadius: const BorderRadius.all(Radius.circular(8))),
                                                    width: 24,
                                                    height: 24,
                                                    alignment: Alignment.center,
                                                    child: Text('+', style: textStyleBlack(mainSize)),
                                                  ),
                                                ),

                                                const SizedBox(width: 10,),

                                                Text('шт', style: textStyleBlack(mainSize)),


                                              ],)
                                          ],),

                                      ],
                                    ),

                                    InkWell(
                                        onTap: (){},
                                        child: SvgPicture.asset('assets/images/delete.svg')
                                    )


                                  ],),
                              ),

                              secondChild: Container(
                                width: allSize(context, 'w'),
                                height: 50,
                                margin: const EdgeInsets.only(right: 16, left: 16, top: 4),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Код:', style: textStyleBlack(secSize),),
                                        Text('Штрихкод:', style: textStyleBlack(secSize),),
                                        Text('Срок годности', style: textStyleBlack(secSize),),
                                      ],),

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('0102', style: textStyleBlack600(secSize),),
                                        Text('129310380123801', style: textStyleBlack600(secSize),),
                                        Text('20.04.2020', style: textStyleBlack600(secSize),),
                                      ],)

                                  ],),
                              ),
                            ),

                            Container(
                              width: allSize(context, 'w'),
                              height: 64,
                              margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Цена', style: textStyleBlack(mainSize),),

                                      SizedBox(
                                        width: (allSize(context, 'w') - 16 ) / 4 - 10,
                                        height: 42,
                                        child: TextField(
                                            keyboardType: TextInputType.text,
                                            onChanged: (text) {
                                              //print(textFieldNumber);
                                            },
                                            style: textStyleBlack(mainSize),
                                            decoration: textFieldDecoration('0')
                                        ),
                                      )

                                    ],
                                  ),
                                  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Сумма', style: textStyleBlack(mainSize),),

                                    SizedBox(
                                      width: (allSize(context, 'w') - 16 ) / 4 - 10,
                                      height: 42,
                                      child: TextField(
                                          keyboardType: TextInputType.text,
                                          onChanged: (text) {
                                            //print(textFieldNumber);
                                          },
                                          style: textStyleBlack(mainSize),
                                          decoration: textFieldDecoration('0')
                                      ),
                                    )

                                  ],
                                ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Наценка', style: textStyleBlack(mainSize),),

                                      SizedBox(
                                        width: (allSize(context, 'w') - 16 ) / 4 - 10,
                                        height: 42,
                                        child: TextField(
                                            keyboardType: TextInputType.text,
                                            onChanged: (text) {
                                              //print(textFieldNumber);
                                            },
                                            style: textStyleBlack(mainSize),
                                            decoration: textFieldDecoration('0')
                                        ),
                                      )

                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Итог', style: textStyleBlack(mainSize),),

                                      SizedBox(
                                        width: (allSize(context, 'w') - 16 ) / 4 - 10,
                                        height: 42,
                                        child: TextField(
                                            keyboardType: TextInputType.text,
                                            onChanged: (text) {
                                              //print(textFieldNumber);
                                            },
                                            style: textStyleBlack(mainSize),
                                            decoration: textFieldDecoration('0')
                                        ),
                                      )

                                    ],
                                  ),
                              ],
                              ),
                            ),

                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 0.3,
                              margin: const EdgeInsets.only(top: 4),
                              color: const Color(0xFF282626),
                            ),
                          ],
                        );
                      },

                    ),
                  ),




                  //check box
                  Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: duty, onChanged: (value){
                            setState(() {
                              duty = value;
                            });
                          }
                          ),
                          // const SizedBox(width: 5,),
                          InkWell(
                              onTap: (){
                                setState(() {
                                  duty = !duty!;
                                });
                              },
                              child: Text('Оформить как долг', style: textStyleBlack600(mainSize)))
                        ],
                      ),
                    ],
                  ),


                  //buttons cancel and save
                  Container(
                    margin: const EdgeInsets.only(right: 16, left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: allSize(context, 'w') / 2 - 20,
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: mainBlue, width: 1)
                            ),
                            alignment: Alignment.center,
                            child: Text('Отмена', style: textStyleBlueColor(mainSize + 1)),
                          ),
                        ),

                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: allSize(context, 'w') / 2 - 20,
                            height: 42,
                            decoration: BoxDecoration(
                                color: mainBlue,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: mainBlue, width: 1)
                            ),
                            alignment: Alignment.center,
                            child: Text('Сохранить', style: textStyleWhite(mainSize + 1)),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //button save and conduct
                  Container(
                    margin: const EdgeInsets.only(right: 16, left: 16, top: 6, bottom: 10),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        width: allSize(context, 'w') - 32,
                        height: 42,
                        decoration: BoxDecoration(
                            color: mainBlue,
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: mainBlue, width: 1)
                        ),
                        alignment: Alignment.center,
                        child: Text('Сохранить и проводить', style: textStyleWhite(mainSize + 1)),
                      ),
                    ),
                  ),


                ],
              ),
            ),



        ),
    );
  }
}
