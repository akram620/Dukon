import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:limbus_flutter_2/main_screen/widgets.dart';

import 'main_screen.dart';


class SearchPanel extends StatefulWidget {
  const SearchPanel({Key? key}) : super(key: key);

  @override
  _SearchPanelState createState() => _SearchPanelState();
}

class _SearchPanelState extends State<SearchPanel> {
  TextEditingController textControllerNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 12, bottom: 8),
      height: 42,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // number
          Container(
              color: Colors.black.withOpacity(0.0),
              width: MediaQuery.of(context).size.width - 32 - 84 - 12 - 32 - 10,
              height: 42,
              // padding: ,
              child: TextField(
                  controller: textControllerNumber,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                  onChanged: (text) {
                    //print(textFieldNumber);
                  },
                  style: textStyleBlack(12),
                  decoration: textFieldDecoration('Номер чека'))),
          // visibility widgets
          Container(
            width: 42,
            height: 42,
            color: Colors.black.withOpacity(0.0),
            child: InkWell(
              child: SvgPicture.asset('assets/images/filter.svg'),
              onTap: () {
                setState(() {
                  MainScreen.isVisibility = !MainScreen.isVisibility;
                });
              },
            ),
          ),

          // clear
          Container(
            width: 42,
            height: 42,
            color: Colors.black.withOpacity(0.0),
            child: InkWell(
              child: SvgPicture.asset('assets/images/filter.svg'),
              onTap: () {
                setState(() {
                  textControllerNumber.text = '';
                });
              },
            ),
          ),

          // search
          Container(
            width: 42,
            height: 42,
            color: Colors.black.withOpacity(0.0),
            child: InkWell(
              child: SvgPicture.asset('assets/images/search.svg'),
              onTap: () {
                if (kDebugMode) {
                  print('search');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
