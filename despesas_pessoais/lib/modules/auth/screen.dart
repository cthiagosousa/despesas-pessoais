import 'package:despesas_pessoais/utils/alerts.dart';
import 'package:despesas_pessoais/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:despesas_pessoais/modules/router/routes.dart';
import 'package:despesas_pessoais/widgets/small_load_widget.dart';
import 'package:despesas_pessoais/modules/auth/controller.dart';
import 'package:despesas_pessoais/modules/core/base.dart';
import 'package:despesas_pessoais/services/providers.dart';

class AuthScreen extends StatelessWidget {
  final AuthController _controller = provider.putOrFind(() => AuthController());

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      body: Container(
        width: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        //color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 250,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Faça login para continuar",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: 28,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),

            Form(
              key: _controller.formKey,
              child: Column(
                children: [
                  TextField(
                    controller: _controller.userTextController,
                    decoration: InputDecoration(
                      hintText: "Usuário",
                      hintStyle: Theme.of(context).textTheme.headline3,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        )
                      ),

                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        )
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextField(
                    controller: _controller.passwordTextController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Senha",
                      hintStyle: Theme.of(context).textTheme.headline3,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        )
                      ),

                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 50),
              child: Obx(() {
                if(_controller.isSending) {
                  return Center(
                    child: SmallLoadWidget(),
                  );
                }

                return ButtonWidget(
                  text: "Continuar",
                  onPress: () async {
                    _controller.isSending = true;
                    final response = await _controller.sendLogin();

                    if(response.success) {
                      _controller.isSending = false;
                      Navigator.of(context).pushNamed(AppRoutes.HOME);
                    }

                    if(response.error) {
                      _controller.isSending = false;
                      Alerts.error(
                        context,
                        text: response.message ?? "Ocorreu um erro ao fazer login."
                      );
                    }
                  },
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}