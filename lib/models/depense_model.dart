import 'package:cloud_firestore/cloud_firestore.dart';

class DepenseModel {
  String label;
  double prix;
  String note;

  DepenseModel({required this.label, required this.prix, required this.note});

  factory DepenseModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> data) {
    //var id = data.data().id;
    return DepenseModel(
        label: data['label'],
        prix: double.parse(data['prix']),
        note: data['note']);
  }
}
