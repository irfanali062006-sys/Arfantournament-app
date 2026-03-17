import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ArfanTournamentApp(),
  ));
}

class ArfanTournamentApp extends StatelessWidget {
  const ArfanTournamentApp({super.key});

  // Ye function missing tha, isliye error aa raha tha
  void joinMatch(String playerName) {
    print("Player $playerName joined the match!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050505),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            // Header Section
            Center(
              child: Column(
                children: [
                  const Icon(Icons.bolt, size: 80, color: Colors.cyanAccent),
                  Text(
                    "ARFAN ARENA",
                    style: GoogleFonts.russoOne(fontSize: 32, color: Colors.white),
                  ),
                  const Text(
                    "BY @ARFAN_ALE",
                    style: TextStyle(color: Colors.cyanAccent, letterSpacing: 5),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // Match Card
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  _matchTile("FREE FIRE SOLO", "₹50", "₹1000"),
                  _matchTile("BGMI SQUAD", "₹100", "₹5000"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _matchTile(String title, String fee, String prize) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF111111),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              Text("Entry: $fee | Prize: $prize", style: const TextStyle(color: Colors.white54, fontSize: 12)),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.cyanAccent),
            onPressed: () => joinMatch("Erfan Player"), // Ab ye function chalega
            child: const Text("JOIN", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
