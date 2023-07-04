import 'package:evisa/screen/visaappliaction_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InformationApplicant extends StatefulWidget {
  const InformationApplicant({super.key});

  @override
  State<InformationApplicant> createState() => _InformationApplicantState();
}



class _InformationApplicantState extends State<InformationApplicant> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Information On The Applicant"),
          backgroundColor: Colors.indigo,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VisaApplication()),
              );
            },
          ),
          toolbarHeight: kToolbarHeight * 2, // Double the height of the appbar
          shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
            ),
          ),
        ),


        body: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[300], // Ajoute la couleur de fond gris
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.indigo),
              ),
              height: 55,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Text Field 1',
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            const SizedBox(height: 10), // Espacement entre les champs
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Text Field 4',
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
