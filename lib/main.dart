import 'package:flutter/material.dart';
import 'package:flutter_application_travel_application/log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // Make the container take the full width
        height: double.infinity, // Make the container take the full height
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover, // Ensure the image covers the entire container
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: 90), // Adjust the top padding as needed
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Hei, Welcome to',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Pacifico'),
                    ),
                    Text(
                      'Traveller!',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                    bottom: 20), // Add some bottom margin if needed
                width: 100, // Set the width
                height: 100, // Set the height
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // Make the container circular
                  border: Border.all(
                    color: Colors.white, // Set the border color to white
                    width: 2.0, // Set the border width
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const log_inPage()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 50,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(21, 37, 51, 50),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      CircleBorder(),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                      Size(100, 100),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
