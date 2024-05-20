import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  const TextControl({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'Change Text Document';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() => _mainText = 'Changedd Text');
            },
            child: const Text('Change Text')),
        TextOutput(_mainText),
        Container(
          height: 200,
          width: 200,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  child: Text("ASd"),
                );
              }),
        ),
      ],
    );
  }
}
