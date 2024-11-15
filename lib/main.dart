import 'package:flutter/material.dart';
import 'package:modelo_examen/resultado.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData.light(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  int weight = 0;
  double height = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC",
            style: TextStyle(fontSize: 40, color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Container(
              height: 80,
              width: 140,
              decoration: const BoxDecoration(color: Colors.grey),
              child: Center(
                child: Text("$weight KG",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w700)),
              ),
            ),
            Slider(
                value: weight.toDouble(),
                min: 0.0,
                max: 300.0,
                divisions: 300,
                label: "${weight.toInt()} Kg",
                onChanged: (double value) {
                  setState(() {
                    weight = value.toInt();
                  });
                }),
            const SizedBox(height: 50),
            Container(
              height: 80,
              width: 140,
              decoration: const BoxDecoration(color: Colors.grey),
              child: Center(
                child: Text("${height.toStringAsPrecision(3)} M",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500)),
              ),
            ),
            Slider(
                min: 0.0,
                max: 3.0,
                label: height.toString(),
                value: height,
                onChanged: (double value) {
                  setState(() {
                    height = value;
                  });
                }),
            const SizedBox(height: 80),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                  //LLAMAR A METODO CALCULAR IMC Y PASAR LOS VALORES
                  MaterialPageRoute(builder: (context) =>  CalcularIMC()));
                },
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    backgroundColor: Colors.red),
                child: const Text(
                  "Calcular",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
  void calcularIMC(double height,int weight) {

  }
}
