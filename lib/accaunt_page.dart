import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:to_do/animation.dart';
import 'package:to_do/liquidSwipe.dart';
import 'package:to_do/list.dart';
import 'package:to_do/main.dart';

class AccaountPage extends StatefulWidget {
  const AccaountPage({Key? key}) : super(key: key);

  @override
  State<AccaountPage> createState() => _AccaountPageState();
  static const routeName = '/loginPage';
}

class _AccaountPageState extends State<AccaountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(232, 3, 6, 27),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 130, 74, 182),
                child: Text(
                  'AB',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Antonio Bonila',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 192, 143, 238),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 25,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Important',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white38,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Liquid.routeName);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: ListTile(
                  leading: Icon(
                    Icons.home_sharp,
                    color: Color.fromARGB(255, 123, 70, 173),
                    size: 25,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tasks',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white38,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              height: 40,
              thickness: 0.2,
              indent: 1,
              endIndent: 0,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(Page2.routeName);
                },
                leading: Icon(
                  Icons.list,
                  color: Color.fromARGB(255, 68, 4, 128),
                  size: 25,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Task List',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white38,
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).popAndPushNamed(MyWidget.routeName);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: ListTile(
                  leading: Icon(
                    Icons.list,
                    color: Color.fromARGB(255, 70, 6, 131),
                    size: 25,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('House List',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white38,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 350, left: 20),
              child: InkWell(
                onTap: () {
                  //OpenDialog();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 183, 132, 231),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'New List',
                        style: TextStyle(
                            color: Color.fromARGB(255, 171, 131, 209)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
