import 'package:flutter/material.dart';

List<Widget> l = List.generate(
    10,
    (index) => Container(
          color: Colors.green,
          margin: EdgeInsets.all(10),
          width: 70,
          height: 70,
        ));

class HorizontalWidget extends StatelessWidget {
  const HorizontalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.widthConstraints().maxWidth > 500) {
            return ListView(
              children: l,
            );
          }
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: l,
            ),
          );
        },
      ),
    );
  }
}
