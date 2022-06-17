import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../main_screen/widgets.dart';
import '../../resource/colors.dart';

class CreateItem extends StatefulWidget {
  const CreateItem({Key? key}) : super(key: key);

  @override
  State<CreateItem> createState() => _CreateItemState();
}

class _CreateItemState extends State<CreateItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2296F3),
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 50,
        title: Text('Новый товар', style: textStyleWhite(largeSize),),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, '/create_coming');
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

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6, left: 16),
            child: Text(
              'Добавить новый товар',
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



          //name
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' Наименование', style: textStyleBlack(mainSize),),

                    SizedBox(
                      width: allSize(context, 'w') - 120 - 32 - 8,
                      height: 42,
                      child: TextField(
                          keyboardType: TextInputType.text,
                          onChanged: (text) {
                            //print(textFieldNumber);
                          },
                          style: textStyleBlack(mainSize),
                          decoration: textFieldDecoration('')
                      ),
                    )

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' Ед.измерения', style: textStyleBlack(mainSize),),

                    InkWell(
                        onTap: () {

                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          alignment: Alignment.centerLeft,
                          height: 42,
                          width: 120,
                          decoration: const BoxDecoration(
                              color: backgroundField,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('шт', style: textStyleBlack(mainSize)),
                              SvgPicture.asset('assets/images/vector_arrow_down.svg'),
                            ],
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),



          //code and barcode
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [



                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' Код товара', style: textStyleBlack(mainSize),),
                    SizedBox(
                      width: allSize(context, 'w') / 3 - 16 - 4 + 35,
                      height: 42,
                      child: TextField(
                          keyboardType: TextInputType.text,
                          onChanged: (text) {
                            //print(textFieldNumber);
                          },
                          style: textStyleBlack(mainSize),
                          decoration: textFieldDecoration('')
                      ),
                    )

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' Штрихкод', style: textStyleBlack(mainSize),),
                    SizedBox(
                      width: (allSize(context, 'w') / 3) * 2 - 16 - 4 - 35,
                      height: 42,
                      child: TextField(
                          keyboardType: TextInputType.text,
                          onChanged: (text) {
                            //print(textFieldNumber);
                          },
                          style: textStyleBlack(mainSize),
                          decoration: textFieldDecoration('')
                      ),
                    )

                  ],
                ),

              ],
            ),
          ),




          //category
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' Категория', style: textStyleBlack(mainSize),),
                InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      height: 42,
                      width: allSize(context, 'w'),
                      decoration: const BoxDecoration(
                          color: backgroundField,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset('assets/images/vector_arrow_down.svg'),
                        ],
                      ),
                    )),
              ],
            ),
          ),




          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' Страна производитель', style: textStyleBlack(mainSize),),

                    InkWell(
                        onTap: () {

                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          alignment: Alignment.centerLeft,
                          height: 42,
                          width: (allSize(context, 'w') / 5) * 3 - 20,
                          decoration: const BoxDecoration(
                              color: backgroundField,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset('assets/images/vector_arrow_down.svg'),
                            ],
                          ),
                        ))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(' Остаток для ', style: textStyleBlack(mainSize),),
                        SvgPicture.asset('assets/images/notification_icon.svg'),
                      ],
                    ),

                    SizedBox(
                      width: (allSize(context, 'w') / 5) * 2 - 12 - 8,
                      height: 42,
                      child: TextField(
                          keyboardType: TextInputType.text,
                          onChanged: (text) {
                            //print(textFieldNumber);
                          },
                          style: textStyleBlack(mainSize),
                          decoration: textFieldDecoration('')
                      ),
                    )

                  ],
                ),
              ],
            ),
          ),









        ],

      )
      )




    );
  }
}
