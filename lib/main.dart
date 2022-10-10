import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do/accaunt_page.dart';
import 'package:to_do/animation.dart';
import 'package:to_do/liquidSwipe.dart';
import 'package:to_do/list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          AccaountPage.routeName: (context) => AccaountPage(),
          Liquid.routeName: (context) => Liquid(),
          MyWidget.routeName: (context) => MyWidget(),
          Page2.routeName: (context) => Page2(),
          '/home': (context) => Page1()
        },
        home: AnimatedSplashScreen(
          backgroundColor: Color.fromARGB(255, 0, 4, 31),
          splashTransition: SplashTransition.rotationTransition,
          duration: 500,
          splash: Container(
            width: 200,
            height: 600,
            child: Image.asset(
              'assets/images/splash.png',
            ),
          ),
          nextScreen: Page1(),
        ));
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
  static const routeName = 'home';
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 4, 31),
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/welcome.png',
                  width: 300,
                  height: 300,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text(
                    'Welcome to',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Uno To Do',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Start using the best To Do app',
                      style:
                          TextStyle(color: Color.fromARGB(255, 228, 183, 236)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 90, left: 35, right: 35),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .popAndPushNamed(AccaountPage.routeName);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 168, 128, 236),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
