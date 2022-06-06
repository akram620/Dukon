import 'package:flutter/material.dart';
import 'package:limbus_flutter_2/main_screen/widgets.dart';
import 'package:limbus_flutter_2/main_screen/from_date_to_date.dart';

class AboutUser extends StatefulWidget {
  const AboutUser({Key? key}) : super(key: key);

  @override
  _AboutUserState createState() => _AboutUserState();
}

class _AboutUserState extends State<AboutUser> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 8),
      child: Column(
        children: [
          rowAboutUser('Наименование:', 'Торговая точка №1'),
          const SizedBox(
            height: 4,
          ),
          rowAboutUser('Адрес:', 'г.Душанбе, ул.Нусратулло Махсум 12А'),
          const SizedBox(
            height: 4,
          ),
          rowAboutUser('ФИО:', 'Каримов Сафамин Курбанович'),
          const SizedBox(
            height: 4,
          ),
          rowAboutUser('Телефон:', '+992 23 345 67-22'),
        ],
      ),
    );
  }

  Row rowAboutUser(text1, text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: textStyleBlack(12),
        ),
        Text(
          text2,
          style: textStyleBlack600(12),
        )
      ],
    );
  }
}
