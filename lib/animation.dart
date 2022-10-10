import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
  static const routeName = 'mywidget';
}

class _MyWidgetState extends State<MyWidget> {
  bool toggleValue = false;
  Color bgColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: toggleValue
                      ? Color.fromARGB(255, 2, 29, 49)
                      : Colors.white),
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.bounceOut,
                      top: 3.0,
                      left: toggleValue ? 60.0 : 0,
                      right: toggleValue ? 0.0 : 60.0,
                      child: Padding(
                        padding: EdgeInsets.only(top: 400),
                        child: InkWell(
                            onTap: toggleButton,
                            child: AnimatedSwitcher(
                              duration: Duration(milliseconds: 800),
                              transitionBuilder:
                                  (Widget child, Animation<double> animation) {
                                return RotationTransition(
                                    turns: animation, child: child);
                              },
                              child: toggleValue
                                  ? Icon(Icons.sunny,
                                      color: Colors.yellow,
                                      size: 35,
                                      key: UniqueKey())
                                  : Icon(
                                      Icons.dark_mode,
                                      color: Color.fromARGB(255, 2, 29, 49),
                                      size: 35,
                                      key: UniqueKey(),
                                    ),
                            )),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
