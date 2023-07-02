import 'package:evisa/screen/navbar_scree.dart';
import 'package:evisa/screen/visaappliaction_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedButtonIndex = -1; // Index du bouton actuellement pressé

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: navbarScreen(),
        appBar: AppBar(
          title: const Text('E-visa'),
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          child: Column(
            children: [
              const SizedBox(height: 250),
              const Text(
                "Welcome To E-Visa",
                style: TextStyle(fontSize: 35, color: Colors.indigo),
              ),
             const  SizedBox(height: 15),
              const Center(
                child: Text(
                  "What would you like to do ?",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      width:  70,// Modifier la hauteur souhaitée du bouton
                      child: TextButton.icon(
                        onPressed: () {

                          setState(() {
                            selectedButtonIndex = 0;
                          });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const VisaApplication()));
                          // Action for first button
                        },
                        icon: const Icon(Icons.card_travel, color: Colors.black),
                        label: const Text(
                          "Visa Application",
                          style: TextStyle(color: Colors.indigo, fontSize: 14),
                        ),
                        style: TextButton.styleFrom(
                          side: BorderSide(
                            color: selectedButtonIndex == 0
                                ? Colors.indigo
                                : Colors.transparent,
                            width: selectedButtonIndex == 0 ? 2.0 : 0.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      width:  70,// Modifier la hauteur souhaitée du bouton
                      child: TextButton.icon(
                        onPressed: () {
                          setState(() {
                            selectedButtonIndex = 1;
                          });
                          // Action for second button
                        },
                        icon: const Icon(Icons.card_travel, color: Colors.black),
                        label: const Text(
                          "Application In Court",
                          style: TextStyle(color: Colors.indigo, fontSize: 14),
                        ),
                        style: TextButton.styleFrom(
                          side: BorderSide(
                            color: selectedButtonIndex == 1
                                ? Colors.indigo
                                : Colors.transparent,
                            width: selectedButtonIndex == 1 ? 2.0 : 0.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      width: 70,// Modifier la hauteur souhaitée du bouton
                      child: TextButton.icon(
                        onPressed: () {
                          setState(() {
                            selectedButtonIndex = 2;
                          });
                          // Action for third button
                        },
                        icon: const Icon(Icons.travel_explore, color: Colors.black),
                        label: const Text(
                          "Validate Request",
                          style: TextStyle(color: Colors.indigo, fontSize: 14),
                        ),
                        style: TextButton.styleFrom(
                          side: BorderSide(
                            color: selectedButtonIndex == 2
                                ? Colors.indigo
                                : Colors.transparent,
                            width: selectedButtonIndex == 2 ? 2.0 : 0.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
