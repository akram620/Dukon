import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:limbus_flutter_2/main_screen/line.dart';

import '../../main_screen/widgets.dart';
import '../../resource/colors.dart';

class MakeSale extends StatefulWidget {
  const MakeSale({Key? key}) : super(key: key);

  @override
  State<MakeSale> createState() => _MakeSaleState();
}

class _MakeSaleState extends State<MakeSale> {

  String text = "text";
  String? groupValue = "Розничный покупатель";
  bool? duty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2296F3),
        // backgroundColor: const Color(0xFFffffff),
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 50,
          title: Text('Мои продажи', style: textStyleWhite(16),),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/main');
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
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8, left: 16),
                    child: Text(
                      'Добавить товар',
                      style: textStyleBlack600(largeSize),
                    ),
                  ),
                ],
              ),

              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Line()),

              const SizedBox(height: 6,),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
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

              const SizedBox(height: 1,),

              const Line(),

              //first listView
              SizedBox(
                width: allSize(context, 'w'),
                height: 140,
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

              const SizedBox(height: 2,),

              // added
              Expanded(
                flex: 6,
                  child: ListView.builder(
                    itemCount: 5,
                      itemBuilder: (context, index){
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(children: [


                        //1
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('1. Хирургические инструменты', style: textStyleBlack600(mainSize),),

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

                                    const SizedBox(width: 15,),

                                    Text('2', style: textStyleBlack(mainSize)),

                                    const SizedBox(width: 15,),

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

                            InkWell(
                              onTap: (){},
                                child: SvgPicture.asset('assets/images/delete.svg'))
                          ],),

                        const SizedBox(height: 4,),

                        //  2
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Цена', style: textStyleBlack(mainSize)),

                                Container(
                                  height: 42,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black.withAlpha(40), width: 1)
                                  ),
                                  width: allSize(context, 'w') / 2 - 20,
                                  alignment: Alignment.center,
                                  child: Text('50 сом', style: textStyleBlack(mainSize)),
                                )
                              ],),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Итог', style: textStyleBlack(mainSize)),

                                Container(
                                  height: 42,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black.withAlpha(40), width: 1)
                                  ),
                                  width: allSize(context, 'w') / 2 - 20,
                                  alignment: Alignment.center,
                                  child: Text('100 сом', style: textStyleBlack(mainSize)),
                                )
                              ],)
                          ],),


                        // const SizedBox(height: 4,),

                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 0.12,
                          margin: const EdgeInsets.only(top: 4),
                          color: const Color(0xFF282626),
                        ),

                        const SizedBox(height: 4,),

                      ],),
                    );
                  })
              ),

              const Line(),

              Expanded(
                  flex: 6,
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      child: Column(
                        children: [

                          // radios
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Row(
                              children: [
                                Radio(
                                    value: "Розничный покупатель",
                                    onChanged: (value){
                                      setState(() {
                                        groupValue = value.toString();
                                      });
                                    },
                                    groupValue: groupValue),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      groupValue = "Розничный покупатель";
                                    });
                                  },
                                    child: Text("Розничный покупатель", style: textStyleBlack600(mainSize))),
                              ],
                            ),

                            Row(
                              children: [
                                Radio(
                                    value: "Контрагент",
                                    groupValue: groupValue,
                                    onChanged: (value){
                                      setState(() {
                                        groupValue = value.toString();
                                      });
                                    }),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      groupValue = "Контрагент";
                                    });
                                  },
                                    child: Text("Контрагент", style: textStyleBlack600(mainSize),)),
                              ],
                            ),

                          ],),

                        //  discount
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Скидка:", style: textStyleBlack(mainSize)),
                              const SizedBox(width: 10,),
                              SizedBox(
                                width: 100,
                                height: 34,
                                child: TextField(
                                    keyboardType: TextInputType.text,
                                    onChanged: (text) {
                                      //print(textFieldNumber);
                                    },
                                    style: textStyleBlack(mainSize + 1),
                                    decoration: textFieldDecoration('0')),
                              )
                            ],
                          ),

                        const SizedBox(height: 2,),

                        //  sum
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Подитог:', style: textStyleBlack(mainSize)),
                                    Text('0c', style: textStyleBlack600(mainSize))
                                  ],
                                ),
                                const SizedBox(height: 2,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Скидка:', style: textStyleBlack(mainSize)),
                                    Text('0c', style: textStyleBlack600(mainSize))
                                  ],
                                ),
                                const SizedBox(height: 2,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Продажа:', style: textStyleBlack(mainSize)),
                                    Text('0c', style: textStyleBlueColor600(mainSize))
                                  ],
                                )
                              ],),
                          ),

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

                          const SizedBox(height: 2,),

                        //  submits
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: const EdgeInsets.only(left: 10),
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
                                child: Text('Продать', style: textStyleWhite(mainSize + 1)),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20,)

                        ],
                      ),
                    ),
                  )
              )
            ],
          )
        ),

    );
  }
}

