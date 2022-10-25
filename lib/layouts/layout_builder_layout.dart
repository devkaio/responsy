import 'package:flutter/material.dart';

class LayoutBuilderLayout extends StatelessWidget {
  const LayoutBuilderLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: Colors.green.shade400,
                child: Center(
                  child: Text('''
MediaQuery height: ${screenSize.height.toStringAsFixed(2)}
LayoutBuilder height: ${constraints.maxHeight.toStringAsFixed(2)}
'''),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: Colors.yellow.shade300,
                child: Center(
                  child: Text('''
MediaQuery height: ${screenSize.height.toStringAsFixed(2)}
LayoutBuilder height: ${constraints.maxHeight.toStringAsFixed(2)}
'''),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
