import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArfanArena(),
    ));

class ArfanArena extends StatelessWidget {
  const ArfanArena({super.key});

  @override
  Widget build(BuildContext context) {
    // Gaming Background Image
    const String bgImage = 'https://images.unsplash.com/photo-1542751371-adc38448a05e?q=80&w=2070&auto=format&fit=crop';

    return Scaffold(
      body: Stack(
        children: [
          // 1. Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(bgImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // 2. Gradient Overlay (Shadow for better text visibility)
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.transparent,
                  Colors.black.withOpacity(0.9),
                ],
              ),
            ),
          ),

          // 3. App Content
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 40),
                // Logo & Branding Section
                Center(
                  child: Column(
                    children: [
                      const Icon(Icons.sports_esports, size: 60, color: Colors.cyanAccent),
                      const SizedBox(height: 10),
                      Text(
                        "ARFAN ARENA",
                        style: GoogleFonts.russoOne(
                          fontSize: 35,
                          color: Colors.white,
                          letterSpacing: 3,
                          shadows: [const Shadow(color: Colors.cyanAccent, blurRadius: 20)],
                        ),
                      ),
                      const Text(
                        "OFFICIAL TOURNAMENT PLATFORM",
                        style: TextStyle(color: Colors.cyanAccent, fontSize: 10, letterSpacing: 2),
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                // Tournament List Section (Bottom Card)
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.85),
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
                    border: const Border(top: BorderSide(color: Colors.cyanAccent, width: 2)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "ACTIVE MATCHES",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1),
                      ),
                      const SizedBox(height: 15),
                      Expanded(
                        child: ListView(
                          children: [
                            _matchTile("FREE FIRE: SQUAD WAR", "₹50", "₹2000", Colors.orangeAccent),
                            _matchTile("BGMI: ERANGEL BATTLE", "₹100", "₹5000", Colors.cyanAccent),
                            _matchTile("LUDO: CLASSIC", "₹30", "₹1000", Colors.greenAccent),
                          ],
                        ),
                      ),
                      // Footer Branding
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "DEVELOPED BY @ARFAN_ALE",
                            style: TextStyle(color: Colors.white.withOpacity(0.3), fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget for Match Cards
  Widget _matchTile(String title, String entry, String prize, Color accentColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: accentColor.withOpacity(0.2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(color: accentColor, fontWeight: FontWeight.bold)),
              Text("Prize: $prize | Entry: $entry", style: const TextStyle(color: Colors.white70, fontSize: 12)),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: accentColor,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            onPressed: () {
              // Action when Join is clicked
            },
            child: const Text("JOIN", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
