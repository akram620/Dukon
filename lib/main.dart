import 'package:flutter/material.dart';
import 'package:limbus_flutter_2/main_screen/main_screen.dart';
import 'package:limbus_flutter_2/screens/choose_services.dart';
import 'package:limbus_flutter_2/screens/login.dart';

import 'screens/oformit_prodaja.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF4DADF9),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/main': (context) => const MainScreen(),
        '/choose_services': (context) => const ChooseServices(),
        '/oformit_prodaja': (context) => const Oformit_Prodaja(),
      },
      debugShowCheckedModeBanner: false,
    ));
