import 'package:depense/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Définition de la page de login
class Login extends StatefulWidget {
  // Constructeur de la classe Login
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

// État associé à la page de login
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // Retourne un Scaffold qui contient la structure de la page
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Couleur de l'appBar
        automaticallyImplyLeading:
            true, // Afficher automatiquement le bouton de retour
        title: const Text("LoginPage",
            style: TextStyle(color: Colors.black)), // Titre de l'appBar
      ),
      // Ci-dessous commence le corps de la page de login
      body: Center(
        //D'abord u widget Center, pour centrer tout ce qui sera dans le coprs de la page
        child: Column(
          //Une colonne dans le center parcequ'il plusieurs elements qui sont arrange verticalement
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // Alignement vertical des enfants en mettant les memes espaces entre les differents enfants
          children: [
            Text(
                "Se connecter"), // Texte "Se connecter" est le premier enfant de la colonne
            SizedBox(
              height: 50,
            ), // Espace vertical de 50 pixels entre les éléments. deuxieme enfant de la colonne
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                child: Text("Continuer"))
          ],
        ),
      ),
    );
  }
}
