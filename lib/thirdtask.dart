// import 'dart:typed_data';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
// import 'package:share_plus/share_plus.dart';
//
// class ThirdTask extends StatefulWidget {
//   const ThirdTask({super.key});
//
//   @override
//   State<ThirdTask> createState() => _ThirdTaskState();
// }
//
// class _ThirdTaskState extends State<ThirdTask> {
//   GlobalKey _repaintBoundaryKey = GlobalKey();
//
//   // Capture the widget as an image and share
//   Future<void> _captureAndSharePng() async {
//     RenderRepaintBoundary boundary = _repaintBoundaryKey.currentContext?.findRenderObject() as RenderRepaintBoundary;
//     if (boundary != null) {
//       var image = await boundary.toImage();
//       ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
//       Uint8List pngBytes = byteData!.buffer.asUint8List();
//
//       // Save the image to the temporary directory
//       final tempDir = await getTemporaryDirectory();
//       final filePath = '${tempDir.path}/image.png';
//       await File(filePath).writeAsBytes(pngBytes);
//
//       // Share the image
//       Share.shareFiles([filePath], text: 'Check out this image!');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('RepaintBoundary'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RepaintBoundary(
//               key: _repaintBoundaryKey,
//               child: Container(
//                 color: Colors.blueAccent,
//                 width: 200,
//                 height: 200,
//                 child: Center(
//                   child: Text('Capture Me!',
//                     style: TextStyle(fontSize: 24, color: Colors.white),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _captureAndSharePng,
//               child: Text('Capture & Share'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
