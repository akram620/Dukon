import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main_screen/widgets.dart';

class ChooseServices extends StatefulWidget {
  const ChooseServices({Key? key}) : super(key: key);

  @override
  _ChooseServicesState createState() => _ChooseServicesState();
}

Color colorContWhite10 = Colors.black.withAlpha(15);
Color colorContWhite = Colors.white;

class _ChooseServicesState extends State<ChooseServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная', style: textStyleWhite(18.0),),
        centerTitle: true,
        toolbarHeight: 70,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            showCupertinoDialog(
                context: context,
                builder: (_) => CupertinoAlertDialog(
                  title: const Text("Выход"),
                  content: const Text("Вы действительно хотите выйти?"),
                  actions: [
                    CupertinoButton(
                        child: const Text('Нет'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    CupertinoButton(
                      child: const Text('Да', style: TextStyle(color: Colors.red),),
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                    ),
                  ],
                ));
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        width: allSize(context, "w"),
        height: allSize(context, "h"),
        color: const Color(0xFF2195F1),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          width: allSize(context, "w"),
          height: allSize(context, "h"),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
          ),
          child: Column(children: [

            // 1
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, '/main');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: allSize(context, "w"),
                height: 64,
                decoration: BoxDecoration(
                  color: colorContWhite,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: const Color(0xFFFE7362)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/choose_icon (1).svg'),
                      const SizedBox(width: 18,),
                      const Text('Продажа', style: TextStyle(color: Color(0xFFFE7362), fontSize: 16),),
                    ],
                  ),
                  const Icon(Icons.arrow_forward_ios_outlined, color: Color(0xFFCFCFDC))
                ],),
              ),
            ),



            // 2
            const SizedBox(height: 10,),
            InkWell(
              onTap: (){motionToast(context, 'В разработке');},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: allSize(context, "w"),
                height: 64,
                decoration: BoxDecoration(
                  color: colorContWhite,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: const Color(0xFF626262)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/choose_icon (2).svg'),
                        const SizedBox(width: 18,),
                        const Text('Возврат', style: TextStyle(color: Color(0xFF626262), fontSize: 16),),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined, color: Color(0xFFCFCFDC))
                  ],),
              ),
            ),


            // 3
            const SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/coming_screen');
                },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: allSize(context, "w"),
                height: 64,
                decoration: BoxDecoration(
                  color: colorContWhite,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: const Color(0xFF4DADF9)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/choose_icon (3).svg'),
                        const SizedBox(width: 18,),
                        const Text('Приход', style: TextStyle(color: Color(0xFF4DADF9), fontSize: 16),),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined, color: Color(0xFFCFCFDC))
                  ],),
              ),
            ),

            // 4
            const SizedBox(height: 10,),
            InkWell(
              onTap: (){motionToast(context, 'В разработке');},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: allSize(context, "w"),
                height: 64,
                decoration: BoxDecoration(
                  color: colorContWhite,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: const Color(0xFFFF3838)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/choose_icon (4).svg'),
                        const SizedBox(width: 18,),
                        const Text('Списание', style: TextStyle(color: Color(0xFFFF3838), fontSize: 16),),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined, color: Color(0xFFCFCFDC))
                  ],),
              ),
            ),


            // 5
            const SizedBox(height: 10,),
            InkWell(
              onTap: (){motionToast(context, 'В разработке');},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: allSize(context, "w"),
                height: 64,
                decoration: BoxDecoration(
                  color: colorContWhite,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: const Color(0xFFFFBB38)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/choose_icon (5).svg'),
                        const SizedBox(width: 18,),
                        const Text('Сдача денег', style: TextStyle(color: Color(0xFFFFBB38), fontSize: 16),),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined, color: Color(0xFFCFCFDC))
                  ],),
              ),
            ),


            // 6
            const SizedBox(height: 10,),
            InkWell(
              onTap: (){motionToast(context, 'В разработке');},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: allSize(context, "w"),
                height: 64,
                decoration: BoxDecoration(
                  color: colorContWhite,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: const Color(0xFF44BE0A)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/choose_icon (6).svg'),
                        const SizedBox(width: 18,),
                        const Text('Инвентаризация', style: TextStyle(color: Color(0xFF44BE0A), fontSize: 16),),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined, color: Color(0xFFCFCFDC))
                  ],),
              ),
            ),





          ],),
        ),
      ),
    );
  }
}
