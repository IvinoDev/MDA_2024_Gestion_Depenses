import 'package:depense/base_de_donnees/firebase_manager.dart';
import 'package:depense/models/depense_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DepenseList extends StatefulWidget {
  const DepenseList({super.key});

  @override
  State<DepenseList> createState() => _DepenseListState();
}

class _DepenseListState extends State<DepenseList> {
  List<Map<String, String>> liste = [
    {"carburant": '1000'},
    {"nourriture": '500'},
    {"Ordinateur": '50000'}
  ];
  List<DepenseModel> list_depense = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FirebaseManager>(context);
    provider.getDepense();
    return Scaffold(
        appBar: AppBar(
          title: Text("Liste des depenses"),
        ),
        body: Consumer<FirebaseManager>(
          builder: (context, value, child) {
            print(value);
            return ListView.builder(
                itemCount: value.list_depense.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.train),
                    trailing: const SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          Icon(Icons.edit),
                          Icon(Icons.delete),
                        ],
                      ),
                    ),
                    title: Text(value.list_depense[index].label),
                    subtitle: Text(value.list_depense[index].prix.toString()),
                  );
                });
          },
        ));
  }
}
