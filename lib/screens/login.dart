import 'package:flutter/material.dart';
import 'package:limbus_flutter_2/main_screen/widgets.dart';

import '../resource/colors.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Авторизация', style: textStyleWhite(18.0),),
        centerTitle: true,
        toolbarHeight: 80,
        elevation: 0,
      ),
      body: Container(
        width: allSize(context, "w"),
        height: allSize(context, "h"),
        color: const Color(0xFF2195F1),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          width: allSize(context, "w"),
          height: allSize(context, "h"),
          decoration: const BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset('assets/images/' 'icon_calendar_login.png', height: 126,),

                Container(width: allSize(context, 'w',),
                  margin: const EdgeInsets.only(left: 5, top: 15),
                    child: Text('Введите домен:', style: textStyleBlack(14),)),
                SizedBox(
                  height: 42,
                  child: TextField(
                      style: textStyleBlack(14),
                      decoration: textFieldDecoration('')
                  ),
                ),

                  Container(width: allSize(context, 'w'),
                      margin: const EdgeInsets.only(left: 5, top: 15),
                      child: Text('Введите логин:', style: textStyleBlack(14),)),
                  SizedBox(
                    height: 42,
                    child: TextField(
                      // controller: textControllerNumber,
                        style: textStyleBlack(14),
                        decoration: textFieldDecoration('')
                    ),
                  ),

                  Container(width: allSize(context, 'w'),
                      margin: const EdgeInsets.only(left: 5, top: 15),
                      child: Text('Введите пароль:', style: textStyleBlack(14),)),
                  SizedBox(
                    height: 42,
                    child: TextField(
                      // controller: textControllerNumber,
                        obscureText: true,
                        style: textStyleBlack(14),
                        decoration: textFieldDecoration('')
                    ),
                  ),

                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/choose_services');
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 50),
                    width: allSize(context, "w"),
                    height: 42,
                    decoration: const BoxDecoration(
                        color: mainBlue,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                      child: Center(child: Text("Войти", style: textStyleWhite(16))),
                    ),
                ),
              ],),
            ),
          ),
        ),
      ),
    );
  }
}
