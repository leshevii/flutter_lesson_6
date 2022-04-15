import 'package:flutter/material.dart';

var listData = List.generate(50, (index) {
  return Builder(builder: (context) {
    return Container(
      child: Text(index.toString()),
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
    );
  });
});

class ListWithDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start, children: listData),
    );
  }
}
