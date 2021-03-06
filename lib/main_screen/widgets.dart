import 'package:flutter/material.dart';
import 'package:limbus_flutter_2/resource/colors.dart';
import 'package:x_message/x_message.dart';

InputDecoration textFieldDecoration(String hintText) {
  return InputDecoration(
    filled: true,
    fillColor: backgroundField,
    hintText: hintText,
    contentPadding: const EdgeInsets.only(top: 0.0, left: 8.0, right: 8.0),

    focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: mainBlue),
        borderRadius: BorderRadius.all(Radius.circular(12.0))
    ),

    enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: backgroundField),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
    ),
  );
}

TextStyle textStyleWhite(double size) {
  return TextStyle(
      fontSize: size, color: Colors.white, fontFamily: 'OpenSans-Regular');
}

String textFrom() {
  return "Akram";
}

TextStyle textStyleWhite600(double size) {
  return TextStyle(
      fontSize: size,
      color: Colors.white,
      fontFamily: 'OpenSans-Regular',
      fontWeight: FontWeight.w600);
}
TextStyle textStyleBlack600(double size) {
  return TextStyle(
      fontSize: size,
      color: Colors.black,
      fontFamily: 'OpenSans-Regular',
      fontWeight: FontWeight.w600);
}


TextStyle textStyleBlack(double size) {
  return TextStyle(
      fontSize: size,
      color: const Color(0xFF000000),
      fontFamily: 'OpenSans-Regular');
}
TextStyle textStyleBlackColor(double size) {
  return TextStyle(
      fontSize: size,
      color: Colors.black,
      fontFamily: 'OpenSans-Regular');
}

TextStyle textStyleBlueColor(double size) {
  return TextStyle(
      fontSize: size,
      color: mainBlue,
      fontFamily: 'OpenSans-Regular');
}

TextStyle textStyleBlueColor600(double size) {
  return TextStyle(
      fontSize: size,
      color: mainBlue,
      fontFamily: 'OpenSans-Regular',
      fontWeight: FontWeight.w600);
}


double allSize(BuildContext context, String code){
  return code == "h" ? MediaQuery.of(context).size.height : MediaQuery.of(context).size.width;
}


void motionToast(context, message){
  Toast(
    context: context,
    message: message,
    position: ToastPosition.bottom,
    padding: const EdgeInsets.only(right: 100, left: 100, top: 10, bottom: 10),
    fontSize: 16,
    duration: const Duration(seconds: 2),
    color: Colors.blue,
    backgroundColor: Colors.white,
    border: Border.all(
      color: Colors.blue,
      width: 1.5,
    ),
    borderRadius: 8,
  );
}
