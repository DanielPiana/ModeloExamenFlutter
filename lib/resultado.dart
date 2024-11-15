import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modelo_examen/main.dart';
import 'package:modelo_examen/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalcularIMC(texto: '', imc: null,),
    );
  }
}

class CalcularIMC extends StatelessWidget {
  final String texto;
  final double? imc;
  const CalcularIMC({super.key, required this.texto, required this.imc});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Widgets.buildAppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Container(
                height: 150,
                width: 140,
                decoration: const BoxDecoration(color: Colors.grey),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("23",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w500)),
                        Text("Peso normal"),
                      ],
                    ),
                  ),
                )
            ),
            const SizedBox(height: 150),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
                ),
                child: const Text("Nuevo IMC",style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}