import 'package:flutter/material.dart';
import 'package:beltran0319/pantalllas0319/panel0319/panel_pantalla0319.dart';

void main() => runApp(MiAppPiscinas0319());

class MiAppPiscinas0319 extends StatelessWidget {
  const MiAppPiscinas0319({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Piscinas Beltrán 0319",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: PanelPantalla0319(),
    );
  }
}
