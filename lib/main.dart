import 'package:flutter/material.dart';
import 'package:limbus_flutter_2/main_screen/main_screen.dart';
import 'package:limbus_flutter_2/screens/choose_services.dart';
import 'package:limbus_flutter_2/screens/coming_screen.dart';
import 'package:limbus_flutter_2/screens/create_coming.dart';
import 'package:limbus_flutter_2/screens/login.dart';

import 'screens/make_sale.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF4DADF9),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/main': (context) => const MainScreen(),
        '/choose_services': (context) => const ChooseServices(),
        '/make_sale': (context) => const MakeSale(),
        '/coming_screen': (context) => const ComingScreen(),
        '/create_coming': (context) => const CreateComing(),
      },
      debugShowCheckedModeBanner: false,
    ));
