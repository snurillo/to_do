import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Liquid extends StatefulWidget {
  const Liquid({Key? key}) : super(key: key);

  @override
  State<Liquid> createState() => _LiquidState();
  static const routeName = '/liquidPage';
}

class _LiquidState extends State<Liquid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(pages: pages),
    );
  }

  final pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    )
  ];
}
