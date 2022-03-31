import 'package:despesas_pessoais/modules/router/routes.dart';
import 'package:despesas_pessoais/modules/user/provider.dart';
import 'package:despesas_pessoais/services/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:despesas_pessoais/services/providers.dart';
import 'package:despesas_pessoais/modules/router/router.dart';
import 'package:despesas_pessoais/utils/themes.dart';

void main() async {
  await FirebaseService.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    AppProviders.setup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.green,
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme,
      onGenerateRoute: genereteRouter,
      initialRoute: provider.find<UserProvider>().user == null ? AppRoutes.AUTH : AppRoutes.HOME,
    );
  }
}

