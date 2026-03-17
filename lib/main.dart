import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false, 
  home: ArfanApp()
));

class ArfanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background Branding
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.bolt, size: 80, color: Colors.cyanAccent),
                Text("ARFAN TOURNAMENT", style: GoogleFonts.russoOne(fontSize: 28, color: Colors.white)),
                Text("@arfan_ale", style: TextStyle(color: Colors.cyanAccent, letterSpacing: 5)),
                SizedBox(height: 30),
                CircularProgressIndicator(color: Colors.cyanAccent),
              ],
            ),
          ),
          // Bottom Info
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text("SECURE GAMING SERVER LIVE", style: TextStyle(color: Colors.white24, fontSize: 10)),
            ),
          )
        ],
      ),
    );
  }
}
