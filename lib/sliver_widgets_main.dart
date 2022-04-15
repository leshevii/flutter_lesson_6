import 'package:flutter/material.dart';
import 'package:flutter_lesson_6/list_view_divider_main.dart' as lesson1;

class SliverWidget extends StatelessWidget {
  const SliverWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 150,
          pinned: true,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/nature.jpg',
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.2),
                )
              ],
            ),
            centerTitle: false,
            titlePadding: const EdgeInsets.only(left: 70, bottom: 15),
            title: const Text('Page title'),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            lesson1.listData,
          ),
        ),
      ],
    );
  }
}
