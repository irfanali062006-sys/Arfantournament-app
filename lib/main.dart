import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ArfanApp()));

class ArfanApp extends StatefulWidget {
  @override
  _ArfanAppState createState() => _ArfanAppState();
}

class _ArfanAppState extends State<ArfanApp> {
  bool showLogin = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () => setState(() => showLogin = true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF050505),
      body: showLogin ? _buildLogin() : _buildSplash(),
    );
  }

  // --- SPLASH SCREEN ---
  Widget _buildSplash() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.bolt, size: 100, color: Colors.cyanAccent),
          SizedBox(height: 20),
          Text("ARFANTOURNAMENT", style: GoogleFonts.russoOne(fontSize: 30, color: Colors.white, letterSpacing: 2)),
          Text("BY @ARFAN_ALE", style: GoogleFonts.poppins(fontSize: 12, color: Colors.cyanAccent, letterSpacing: 5)),
          SizedBox(height: 40),
          CircularProgressIndicator(color: Colors.cyanAccent),
        ],
      ),
    );
  }

  // --- LOGIN SCREEN (Gamerji Style) ---
  Widget _buildLogin() {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("SECURE LOGIN", style: GoogleFonts.orbitron(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 40),
          _input("Instagram ID / Email"),
          SizedBox(height: 20),
          _input("Password", isPass: true),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.cyanAccent, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
              onPressed: () {},
              child: Text("ENTER ARENA", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 20),
          Text("@arfan_ale Promotional Partner", style: TextStyle(color: Colors.white24, fontSize: 10)),
        ],
      ),
    );
  }

  Widget _input(String hint, {bool isPass = false}) {
    return TextField(
      obscureText: isPass,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white10,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
      ),
    );
  }
}
