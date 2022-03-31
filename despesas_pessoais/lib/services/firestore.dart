import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:despesas_pessoais/services/firebase.dart';

class Firestore {
  static FirebaseFirestore instance = FirebaseFirestore.instanceFor(app: FirebaseService.app);
}