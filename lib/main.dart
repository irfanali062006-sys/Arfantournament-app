import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(ArfanProApp());

class ArfanProApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0D0D0D), // Deep Black
        primaryColor: Colors.orangeAccent,
      ),
      home: SplashScreen(),
    );
  }
}

// 1. KHATARNAK SPLASH SCREEN & BRANDING
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Gaming Logo Placeholder
            Icon(Icons.sports_esports, size: 100, color: Colors.orangeAccent),
            SizedBox(height: 20),
            Text("ARFANTOURNAMENT", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, letterSpacing: 2, color: Colors.white)),
            Text("Powered by @arfan_ale", style: TextStyle(fontSize: 14, color: Colors.orangeAccent.withOpacity(0.8))),
            SizedBox(height: 40),
            CircularProgressIndicator(color: Colors.orangeAccent),
          ],
        ),
      ),
    );
  }
}

// 2. SECURE LOGIN SCREEN (INSTA STYLE)
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SECURE ACCESS", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: "Instagram Username / Email",
                filled: true,
                fillColor: Colors.white10,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                filled: true,
                fillColor: Colors.white10,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                onPressed: () {
                  // Agla step: Home Dashboard par jana
                },
                child: Text("LOGIN TO ARENA", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Don't have an account? Register Now", style: TextStyle(color: Colors.white54)),
            ),
          ],
        ),
      ),
    );
  }
}
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FF Tournament - @erfan_ale")),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Free Fire Solo Match", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("Entry Fee: ₹10 | Prize: ₹100"),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    // Test ke liye hum 'Erfan Player' naam bhej rahe hain
                    joinMatch("Erfan Player");
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Joining... Check Firebase!")));
                  },
                  child: Text("JOIN NOW", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
