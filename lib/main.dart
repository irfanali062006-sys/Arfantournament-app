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
    const String bgImage = 'https://images.unsplash.com/photo-1542751371-adc38448a05e?q=80&w=2070&auto=format&fit=crop';

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage(bgImage), fit: BoxFit.cover),
            ),
          ),
          Container(color: Colors.black.withOpacity(0.6)),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 40),
                Center(
                  child: Text(
                    "ARFAN ARENA",
                    style: GoogleFonts.russoOne(fontSize: 35, color: Colors.cyanAccent, letterSpacing: 3),
                  ),
                ),
                const Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.85),
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
                    border: const Border(top: BorderSide(color: Colors.cyanAccent, width: 2)),
                  ),
                  child: ListView(
                    children: [
                      _tile("FREE FIRE: SQUAD", "₹50", "₹2000", Colors.orangeAccent),
                      _tile("BGMI: ERANGEL", "₹100", "₹5000", Colors.cyanAccent),
                      _tile("LUDO: KING", "₹20", "₹500", Colors.greenAccent),
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

  Widget _tile(String t, String e, String p, Color c) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        title: Text(t, style: TextStyle(color: c, fontWeight: FontWeight.bold)),
        subtitle: Text("Entry: $e | Prize: $p", style: const TextStyle(color: Colors.white70)),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: c),
          onPressed: () {},
          child: const Text("JOIN", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
