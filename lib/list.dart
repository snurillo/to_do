import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
  static const routeName = '/list';
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 140, 28, 219),
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: 'To Do',
            ),
            Tab(
              text: 'Completed',
            )
          ]),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Task List ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 140, 28, 219),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.border_color_outlined),
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 30,
                ),
                child: Icon(Icons.delete_outlined))
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 270),
            child: Center(
              child: Text(
                'Loading ...',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 290, left: 15, right: 15),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 168, 86, 226)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Add Task',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ),
        ]),
      ));
}
