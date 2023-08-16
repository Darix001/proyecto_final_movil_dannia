import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getAccounts() async {
  List accounts = [];
  CollectionReference collectionReferenceAccounts = db.collection('accounts');
  QuerySnapshot queryAccount = await collectionReferenceAccounts.get();
  accounts.addAll(queryAccount.docs.map((e) => e.data()));
  return [];
}
