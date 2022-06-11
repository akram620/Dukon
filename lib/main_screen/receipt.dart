import 'package:flutter/material.dart';
import 'package:limbus_flutter_2/main_screen/widgets.dart';

class ReceiptClass extends StatefulWidget {
  const ReceiptClass({Key? key}) : super(key: key);

  @override
  _ReceiptClassState createState() => _ReceiptClassState();
}

class _ReceiptClassState extends State<ReceiptClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        containerReceipt('card_yellow.png', 'Количество\nчеков', '0'),
        containerReceipt('card_red.png', 'Сумма\nвозврата', '0'),
        containerReceipt('card_blue.png', 'Выручка\n', '0'),
      ]),
    );
  }

  Container containerReceipt(String nameImage, String text1, String text2) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 77,
      width: 104,
      child: Stack(
        children: [
          Image.asset('assets/images/receipts/' + nameImage),
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
