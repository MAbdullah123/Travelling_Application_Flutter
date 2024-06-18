import 'package:flutter/material.dart';

class log_inPage extends StatelessWidget {
  const log_inPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 90,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's Go",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  Text(
                    "It's time to travel !!",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),

                            borderSide: BorderSide(
                              color: Colors.black,
                            ), // Border color set to black
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ), // Border color set to black
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ), // Border color set to black
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ), // Border color set to black
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ), // Border color set to black
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 0, 0, 0.114),
                            ), // Border color set to black
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Log In',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromRGBO(146, 156, 164, 1.0)),
                          ),
                        ),
                      ),
                    ],
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
