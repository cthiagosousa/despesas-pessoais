import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final void Function()? onPress;

  const ButtonWidget({ 
    required this.text,
    this.backgroundColor,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor ?? Theme.of(context).colorScheme.primary),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
          color: Colors.white,
        ),
      ),
      onPressed: onPress,
    );
  }
}