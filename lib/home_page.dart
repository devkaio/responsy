// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsy/layouts/layout_builder_layout.dart';
import 'package:responsy/layouts/media_query_layout.dart';
import 'package:responsy/layouts/scrollable_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              LabelWidget(
                label: 'MediaQuery',
                child: MediaQueryLayout(),
              ),
              LabelWidget(
                label: 'LayoutBuilder',
                child: LayoutBuilderLayout(),
              ),
              LabelWidget(
                label: 'Scrollable Layout',
                child: ScrollableLayout(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LabelWidget extends StatelessWidget {
  final Widget child;
  final String label;

  const LabelWidget({
    Key? key,
    required this.child,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => child,
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(label),
            ),
          ),
        ),
      ],
    );
  }
}
