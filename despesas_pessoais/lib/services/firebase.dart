import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  static const APP_NAME = "DespesasPessoais";
  static final FirebaseApp app = Firebase.app(APP_NAME);

  static Future<void> init() async {
    await Firebase.initializeApp(name: APP_NAME);
  }
}