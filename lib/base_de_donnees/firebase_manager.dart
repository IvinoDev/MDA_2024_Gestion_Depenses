import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:depense/models/depense_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FirebaseManager extends ChangeNotifier {
  final db = FirebaseFirestore.instance;
  List<DepenseModel> list_depense = [];

  Future<void> ajoutDepense() async {
    print("Ajout---");
    try {
      await db.collection("depensea").add({
        "label": "Carburant",
        "prix": "123",
        "note": "rien",
      });
    } catch (error) {
      print(error);
    }
  }

  Future<List<DepenseModel>?> getDepense() async {
    try {
      var data = await db.collection("depensea").get();
      List<DepenseModel> depense =
          data.docs.map(((e) => DepenseModel.fromSnapshot(e))).toList();
      list_depense = depense;
      print("Le nombre de recuperer est: ${depense.length}");
      notifyListeners();
      return depense;
    } catch (e) {
      print(e);
    }

    notifyListeners();
  }
}
