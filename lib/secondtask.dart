import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondTask extends StatefulWidget {
  const SecondTask({super.key});

  @override
  State<SecondTask> createState() => _SecondTaskState();
}

class _SecondTaskState extends State<SecondTask> {

  final String predefinedText = 'This is the text that will be copied to the clipboard.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Copy to Clipboard Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Copy the predefined text to the clipboard
                Clipboard.setData(ClipboardData(text: predefinedText));

                // Show a SnackBar to notify the user
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Text copied to clipboard!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text('Copy Text to Clipboard'),
            ),
            SizedBox(height: 20),
            Text(
              'Press the button to copy the predefined text to your clipboard.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
