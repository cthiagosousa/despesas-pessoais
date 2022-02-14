import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Drawer? drawer;
  final FloatingActionButton? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Widget? body;

  const BaseScreen({
    Key? key,
    this.body,
    this.appBar,
    this.drawer,
    this.floatingActionButton,
    this.bottomNavigationBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        drawer: drawer,
        body: body,
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomNavigationBar,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
    );
  }
}