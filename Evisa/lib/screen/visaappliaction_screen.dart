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
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo, // Couleur indigo pour la barre d'applications
          leading: IconButton(
            icon: const  Icon(Icons.arrow_back), // Icône de retour
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen())); // Action à effectuer lors du clic sur le bouton de retour
            },
          ),
        ),
      ),
    );
  }
}
