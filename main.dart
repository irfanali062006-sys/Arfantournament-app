import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: TournamentHome(),
  ));
}

class TournamentHome extends StatelessWidget {
  // Tumhara Firebase Link
  final String dbUrl = "https://fftorniment-default-rtdb.firebaseio.com/players.json";

  // Function: Jab user Join dabayega toh data yahan se Firebase jayega
  Future<void> joinMatch(String playerName) async {
    try {
      final response = await http.post(
        Uri.parse(dbUrl),
        body: json.encode({
          "name": playerName,
          "game": "Free Fire Solo",
          "time": DateTime.now().toString(),
        }),
      );
      if (response.statusCode == 200) {
        print("Success! Player Joined.");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
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
