import 'package:flutter/material.dart';

class MediaQueryLayout extends StatelessWidget {
  const MediaQueryLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Text(
            '''
MediaQuery width: ${screenSize.width.toStringAsFixed(2)}
MediaQuery height: ${screenSize.height.toStringAsFixed(2)}
MediaQuery orientation: $orientation
''',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
