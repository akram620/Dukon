import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class AppBarMain extends StatefulWidget {
  const AppBarMain({Key? key}) : super(key: key);

  @override
  _AppBarMainState createState() => _AppBarMainState();
}

class _AppBarMainState extends State<AppBarMain> {
  bool val = false;

  Color colorWhite = const Color(0xFFFFFFFF);
  Color colorGreen = const Color(0xFF2FF52F);
  Color colorRed = const Color(0xFFBF3E3E);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: FlutterSwitch(
          activeColor: const Color(0xFF4DADF9),
          inactiveColor: const Color(0xFF4DADF9),
          activeText: 'on',
          toggleColor: const Color(0xFF4DADF9),
          inactiveText: 'off',
          width: 40.0,
          height: 20.0,
          valueFontSize: 11.0,
          toggleSize: 15.0,
          borderRadius: 30.0,
          padding: 1,
          // showOnOff: true,
          value: val,
          switchBorder: Border.all(
              color: colorWhite, width: 1, style: BorderStyle.solid),
          toggleBorder: Border.all(
              color: colorWhite, width: 1, style: BorderStyle.solid),
          duration: const Duration(milliseconds: 200),

          onToggle: (bool value) {

            val = value;

            if (val == true){
              showCupertinoDialog(
                  context: context,
                  builder: (_) => CupertinoAlertDialog(
                    title: const Text("Смена"),
                    content: const Text("Вы уверены, что хотите открыть смену?"),
                    actions: [
                      CupertinoButton(
                          child: const Text('Нет'),
                          onPressed: () {
                            Navigator.of(context).pop();
                            val = false;
                          }),
                      CupertinoButton(
                        child: const Text('Да', style: TextStyle(color: Colors.red),),
                        onPressed: () {
                          Navigator.of(context).pop();
                          setState(() {
                            val = true;
                          });

                        },
                      ),
                    ],
                  ));
            }


            else{
              showCupertinoDialog(
                  context: context,
                  builder: (_) => CupertinoAlertDialog(
                    title: const Text("Смена"),
                    content: const Text("Вы уверены, что хотите закрыть смену?"),
                    actions: [
                      CupertinoButton(
                          child: const Text('Нет'),
                          onPressed: () {
                            Navigator.of(context).pop();
                            val = true;
                          }),
                      CupertinoButton(
                        child: const Text('Да', style: TextStyle(color: Colors.red),),
                        onPressed: () {
                          Navigator.of(context).pop();
                          setState(() {
                            val = false;
                          });
                        },
                      ),
                    ],
                  ));
            }


          }),
    );
  }
}
