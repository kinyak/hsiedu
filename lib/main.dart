import 'package:flutter/material.dart';
import 'package:hsiedu/beranda.dart';
import 'package:hsiedu/profil.dart';


void main() => runApp(codingin());

class codingin extends StatelessWidget {
  const codingin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/beranda',
      routes: {
        '/beranda': (context) => Beranda(),
        '/profil': (context) => Profil(),
      },
    );
  }
}
