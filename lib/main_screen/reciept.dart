import 'package:flutter/material.dart';
import 'package:limbus_flutter_2/main_screen/widgets.dart';

class RecieptClass extends StatefulWidget {
  const RecieptClass({Key? key}) : super(key: key);

  @override
  _RecieptClassState createState() => _RecieptClassState();
}

class _RecieptClassState extends State<RecieptClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        containerReciept('card_yellow.png', 'Количество\nчеков', '0'),
        containerReciept('card_red.png', 'Сумма\nвозврата', '0'),
        containerReciept('card_blue.png', 'Выручка\n', '0'),
      ]),
    );
  }

  Container containerReciept(String nameImage, String text1, String text2) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 77,
      width: 104,
      child: Stack(
        children: [
          Image.asset('assets/images/reciepts/' + nameImage),
          Container(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1, style: textStyleWhite(12)),
                Text(
                  text2,
                  style: textStyleWhite600(16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
