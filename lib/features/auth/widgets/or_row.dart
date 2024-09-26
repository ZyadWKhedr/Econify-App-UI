import 'package:flutter/material.dart';

class OrRow extends StatelessWidget {
  const OrRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 0.5,
            indent: 20,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'or',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 0.5,
            endIndent: 20,
          ),
        ),
      ],
    );
  }
}
