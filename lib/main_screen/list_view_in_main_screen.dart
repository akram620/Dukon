import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:limbus_flutter_2/main_screen/widgets.dart';
import 'package:limbus_flutter_2/resource/colors.dart';

import 'line.dart';

class ListViewInMainScreen extends StatefulWidget {
  const ListViewInMainScreen({Key? key}) : super(key: key);

  @override
  _ListViewInMainScreenState createState() => _ListViewInMainScreenState();
}

class _ListViewInMainScreenState extends State<ListViewInMainScreen> {


  Widget infoIcon = SvgPicture.asset('assets/images/info_icon.svg');

  int lenOfList = 8;



  void bottomSheetShow(){

    double sizeScr = (allSize(context, 'h') - 85) / allSize(context, 'h');

    showStickyFlexibleBottomSheet(
      minHeight: 0,
      initHeight: sizeScr,
      maxHeight: sizeScr,
      headerHeight: 0,
      context: context,
      headerBuilder: (BuildContext context, double offset) {
        return const Text('');
      },
      bodyBuilder: (BuildContext context, double offset) {
        return SliverChildListDelegate(
          <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: allSize(context, 'w'),
              height: allSize(context, 'h') * sizeScr,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0))
              ),
              child: Column(
                children: [

                //  header
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            child: InkWell(
                              onTap: (){Navigator.pop(context);},
                                child: SvgPicture.asset('assets/images/union.svg')),
                          margin: const EdgeInsets.only(top: 14, right:  4),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Розничный покупатель', style: textStyleBlack600(largeSize),),
                      ],
                    )
                  ],
                ),

                const SizedBox(height: 20,),


              //    body
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Продажа №:', style: textStyleBlack(secSize),),
                  Text('23', style: textStyleBlack600(mainSize),)
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Дата и время:', style: textStyleBlack(secSize),),
                    Text('21/03/2021 12:26', style: textStyleBlack600(mainSize),)
                  ],),



                const SizedBox(height: 8,),


                Container(
                    width: allSize(context, 'w'),
                    height: 0.5,
                    color: Colors.black87,
                  ),


                const SizedBox(height: 6,),


                // возрат btn
                InkWell(
                  // splashColor: Colors.red,
                  onTap: (){
                    motionToast(context, 'В разработке');
                  },
                  child: Container(
                    width: allSize(context, 'w'),
                    height: 42,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: const Color(0xFFFE7362)),
                    ),
                    child: const Center(child: Text('Возврат', style: TextStyle(
                      color: Color(0xFFFE7362),
                      fontSize: mainSize,
                      fontFamily: 'OpenSans-Regular'
                    ),)),
                  ),
                ),


                const SizedBox(height: 6,),


                  Container(
                    width: allSize(context, 'w'),
                    height: 0.5,
                    color: Colors.black87,
                  ),

                  const SizedBox(height: 8,),


                  Expanded(
                    child: ListView.builder(
                      itemCount: 30,
                        itemBuilder: (context, index){

                          return Column(
                            children: [
                              Container(
                                width: allSize(context, 'w'),
                                child: Row(

                                  children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 6),
                                    width: 60,
                                      child: Image.asset('assets/images/img.jpg', width: 42, height: 42,)
                                  ),

                                  Container(
                                    width: allSize(context, 'w') - 100,
                                    child: Column(children: [

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                        Text('Танометр', style: textStyleBlack600(12),),
                                        Text('120', style: textStyleBlack600(13),),
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

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                        Text('Цена продажи:', style: textStyleBlack(secSize),),
                                        Text('820', style: textStyleBlack(mainSize),),
                                      ],),


                                    ],),
                                  )
                                ],),
                              ),

                              const SizedBox(height: 8,),

                            ],
                          );
                        }
                    ),
                  ),

                  Container(
                    width: allSize(context, 'w'),
                    // margin: const EdgeInsets.only(right: 18, left: 11),
                    color: Colors.black,
                    height: 0.5,
                  ),

                  Container(
                    width: allSize(context, 'w'),
                    margin: const EdgeInsets.only(right: 18, left: 11),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Чек на сумму:', style: textStyleBlack(mainSize),),
                        Text('450 сом', style: textStyleBlueColor600(mainSize + 1),),
                      ],),
                  ),




              ],),
            )
          ],
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {

    double allSizeDoubleH = allSize(context, 'h');

  return Expanded(child:
    ListView.builder(
      itemCount: lenOfList,
        itemBuilder: (context, index){
      return index == lenOfList - 1

        ? const SizedBox(height: 65,)
        :

      Container(
        // margin: const EdgeInsets.only(top: 6),
        width: allSize(context, 'w'),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 0.45,
              margin: const EdgeInsets.only(top: 4),
              color: Colors.black26,
            ),
            Expandable(
              boxShadow: const [],
              centralizeFirstChild: false,
              backgroundColor: Colors.white,
              arrowWidget: SvgPicture.asset('assets/images/arrow_expan_down.svg'),
              arrowLocation: ArrowLocation.left,

              firstChild: Container(
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
                            Text('Розничный покупатель', style: textStyleBlack600(mainSize),),
                            const SizedBox(height: 5,),
                            Text('Выручка:', style: textStyleBlueColor(secSize),)
                          ],),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('340 сом', style: textStyleBlueColor600(mainSize),),
                        const SizedBox(height: 3,),
                      ],),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: (){bottomSheetShow();},
                            child: SvgPicture.asset('assets/images/info_icon.svg'))
                      ],)
                  ],),
              ),
              secondChild: Container(
                width: allSize(context, 'w'),
                height: 44,
                margin: EdgeInsets.only(right: 6, left: allSizeDoubleH - (allSizeDoubleH - 50)),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Дата и время:', style: textStyleBlack(secSize),),
                        Text('№ чека выручка:', style: textStyleBlack(secSize),)
                      ],),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('21/03/2021 12:26', style: textStyleBlack600(secSize),),
                        Text('24', style: textStyleBlack600(secSize),)
                      ],)

                  ],),
              ),
            ),
          ],
        ),
      );
    })
  );
  }
}
