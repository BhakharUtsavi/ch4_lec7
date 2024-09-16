import 'package:flutter/material.dart';

class FirstTask extends StatefulWidget {
  const FirstTask({super.key});

  @override
  State<FirstTask> createState() => _FirstTaskState();
}

class _FirstTaskState extends State<FirstTask> {

  final String longText = '''
    This is an example of a SelectableText widget in Flutter.
    You can select and copy specific portions of this text to your clipboard.
    Flutter provides powerful widgets for building interactive UIs!
    Simply long press on any part of this text to select it.
    Once selected, you can copy the text and paste it elsewhere.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SelectableText Without ToolbarOptions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SelectableText(longText,
          style: TextStyle(fontSize: 18, color: Colors.black87),
          textAlign: TextAlign.justify,
          showCursor: true,
          cursorColor: Colors.blue,
          cursorWidth: 2.0,
        ),
      ),
    );
  }
}
