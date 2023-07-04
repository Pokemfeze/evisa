import 'package:evisa/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisaApplication extends StatefulWidget {
  const VisaApplication({super.key});

  @override
  State<VisaApplication> createState() => _VisaApplicationState();
}

class _VisaApplicationState extends State<VisaApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text ("Visa Application"),
          backgroundColor: Colors.indigo,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
            },
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 15),
            const Text(
              "Informations",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 5),
            const Center(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                thickness: 1,
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(15),
                children: [
                  SizedBox(
                    height: 50, // Hauteur souhaitée du bouton
                    child: ElevatedButton(
                      onPressed: () {
                        // Logique du premier bouton
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Couleur de fond du bouton (indigo)
                        onPrimary: Colors.black87, // Couleur du texte sur le bouton (blanc)
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white60), // Couleur des bordures (gris)
                          borderRadius: BorderRadius.circular(5), // Rayon des coins des bordures
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start, // Alignement du contenu à gauche
                        children: const [
                          Icon(Icons.person, color: Colors.indigo,size: 30), // Icône utilisateur
                          SizedBox(width:10), // Espacement entre l'icône et le texte
                          Text("Information On The Applicant", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50, // Hauteur souhaitée du bouton
                    child: ElevatedButton(
                      onPressed: () {
                        // Logique du premier bouton
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Couleur de fond du bouton (indigo)
                        onPrimary: Colors.black87, // Couleur du texte sur le bouton (blanc)
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white60), // Couleur des bordures (gris)
                          borderRadius: BorderRadius.circular(5), // Rayon des coins des bordures
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start, // Alignement du contenu à gauche
                        children: const [
                          Icon(Icons.person, color: Colors.indigo,size: 30), // Icône utilisateur
                          SizedBox(width:10), // Espacement entre l'icône et le texte
                          Text("Information Document", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50, // Hauteur souhaitée du bouton
                    child: ElevatedButton(
                      onPressed: () {
                        // Logique du premier bouton
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Couleur de fond du bouton (indigo)
                        onPrimary: Colors.black87, // Couleur du texte sur le bouton (blanc)
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white60), // Couleur des bordures (gris)
                          borderRadius: BorderRadius.circular(5), // Rayon des coins des bordures
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start, // Alignement du contenu à gauche
                        children: const [
                          Icon(Icons.person, color: Colors.indigo,size: 30), // Icône utilisateur
                          SizedBox(width:10), // Espacement entre l'icône et le texte
                          Text("Information Prompter", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50, // Hauteur souhaitée du bouton
                    child: ElevatedButton(
                      onPressed: () {
                        // Logique du premier bouton
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Couleur de fond du bouton (indigo)
                        onPrimary: Colors.black87, // Couleur du texte sur le bouton (blanc)
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white60), // Couleur des bordures (gris)
                          borderRadius: BorderRadius.circular(5), // Rayon des coins des bordures
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start, // Alignement du contenu à gauche
                        children: const [
                          Icon(Icons.person, color: Colors.indigo,size: 30), // Icône utilisateur
                          SizedBox(width:10), // Espacement entre l'icône et le texte
                          Text("Information On The Visa", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                 const SizedBox(height: 270),
                  const Center(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        // Logique du premier bouton
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.indigo,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white60),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Center( // Ajout du widget Center ici
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Centrer les éléments de la ligne (texte)
                          children: const [
                            Text("Save & Continue", style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
