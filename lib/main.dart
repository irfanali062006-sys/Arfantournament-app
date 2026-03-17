import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ArfanArena(),
  ));
}

class ArfanArena extends StatelessWidget {
  const ArfanArena({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.bolt, size: 100, color: Colors.cyanAccent),
            const SizedBox(height: 20),
            Text(
              "ARFAN TOURNAMENT",
              style: GoogleFonts.russoOne(fontSize: 28, color: Colors.white),
            ),
            const Text(
              "@arfan_ale",
              style: TextStyle(color: Colors.cyanAccent, letterSpacing: 5),
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(color: Colors.cyanAccent),
            const SizedBox(height: 20),
            const Text("LIVE SOON...", style: TextStyle(color: Colors.white24)),
          ],
        ),
      ),
    );
  }
}
