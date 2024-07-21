// Importations nécessaires
//import 'package:flutter/material.dart'; // Commentée pour l'instant, voir ci-dessous

// Importation de la page de login
import 'package:depense/base_de_donnees/firebase_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:depense/pages/home.dart';
import 'package:depense/pages/login.dart'; // Assurez-vous que le chemin est correct

import 'package:flutter/material.dart'; // Importation de Flutter Material

// Fonction principale main pour lancer l'application
void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => FirebaseManager(),
      )
    ],
    child: const DepenseApp(),
  ));
}

// Classe pour le MaterialApp
class DepenseApp extends StatelessWidget {
  const DepenseApp(); // Constructeur de la classe DepenseApp

  @override
  Widget build(BuildContext context) {
    // Retourne un MaterialApp qui définit l'application
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Depense App", // Titre de l'application
      home: Home(), // Page d'accueil de l'application
    );
  }
}

// Classe pour la page d'accueil
class Accueil extends StatefulWidget {
  const Accueil({Key? key}); // Constructeur de la classe Accueil

  @override
  State<Accueil> createState() => _AccueilState();
}

// État associé à la page d'accueil
class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    // Retourne un Scaffold qui contient la structure de la page d'accueil
    return Scaffold(
      backgroundColor: Colors.purple, // Couleur de fond de la page
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // Alignement vertical des enfants
          children: [
            const Text("LOGO",
                style: TextStyle(color: Colors.white)), // Texte "LOGO" en blanc
            // SizedBox(height: MediaQuery.of(context).size.height*0.5), // Commenté pour l'instant
            ElevatedButton(
              onPressed: () {
                // Action lorsque le bouton est pressé
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login(); // Navigue vers la page de login
                }));
              },
              child: const Text("Continuer"), // Texte du bouton "Continuer"
            ),
          ],
        ),
      ),
    );
  }
}
