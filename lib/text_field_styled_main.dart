import 'package:flutter/material.dart';

class FieldWidget extends StatelessWidget {
  const FieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
            helperText: 'Search',
            labelText: 'Search',
            suffixIcon: const Icon(Icons.search),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.purple),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.purple),
            ),
          ),
        ),
      ),
    );
  }
}
