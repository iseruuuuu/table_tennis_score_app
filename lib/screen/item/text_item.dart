import 'package:flutter/material.dart';

class TextItem extends StatelessWidget {
  const TextItem({Key? key, required this.text, required this.color})
      : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 3,
          ),
        ),
        const Divider(
          height: 0,
          thickness: 5,
          indent: 0,
          endIndent: 0,
          color: Colors.red,
        ),

      ],
    );
  }
}
