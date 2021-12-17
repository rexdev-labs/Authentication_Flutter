import 'package:cloud_firestore/cloud_firestore.dart';

class Collection {
  static CollectionReference users =
      FirebaseFirestore.instance.collection('users');
}
