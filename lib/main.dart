import 'package:flutter/material.dart';
import 'package:flutter_lesson_6/horizontal_main.dart';
import 'package:flutter_lesson_6/list_view_divider_main.dart';
import 'package:flutter_lesson_6/sliver_widgets_main.dart';
import 'package:flutter_lesson_6/text_field_styled_main.dart';

void main() {
  runApp(const MyApp());
}

List<Widget> l = [
  ListWithDivider(),
  SliverWidget(),
  HorizontalWidget(),
  FieldWidget()
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lesson_6',
      home: MyHomePage(title: 'Flutter_Lesson_6'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: l[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.one_k),
              label: 'task1',
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.two_k),
              label: 'task2',
              backgroundColor: Colors.pink),
          BottomNavigationBarItem(
              icon: Icon(Icons.three_k),
              label: 'task3',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.four_k),
              label: 'task4',
              backgroundColor: Colors.purple),
        ],
      ),
    );
  }
}
