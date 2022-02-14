import 'package:despesas_pessoais/modules/core/base.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      body: Center(
        child: Text("Olá Auth"),
      ),
    );
  }
}