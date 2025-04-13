import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Jour aleatoire',
      home: JoursAleatoires(),
    );
  }
}

class JoursAleatoires extends StatefulWidget {
  const JoursAleatoires({super.key});

  @override
  State<JoursAleatoires> createState() => _JoursAleatoiresState();
}

class _JoursAleatoiresState extends State<JoursAleatoires> {
  int _indexJourActuel = 0;
  List<String> jours = [
    'Lundi',
    'Mardi',
    'Mercredi',
    'Jeudi',
    'Vendredi',
    'Samedi',
    'Dimanche'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Jour aleatoire'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Jour aleatoire',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Jour : ${jours[_indexJourActuel]}',
                style: const TextStyle(fontSize: 25, color: Colors.blue),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _indexJourActuel = Random().nextInt(jours.length);
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: const Text(
                  'Generer un jour aleatoire',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
