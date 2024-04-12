import 'package:flutter/material.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LifeSync',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Sizes for the images
  final double lifesyncLogoHeight = 150.0; // Set your desired height for LIFESYNC logo
  final double logoHeight = 120.0; // Set your desired height for the Dart logo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(flex: 2), // Decrease the flex to position the logo higher
          Padding(
            padding: const EdgeInsets.only(left: 50.0), // Add padding to move the image to the right
            child: Image.asset(
              'lib/images/lifesync.png',
              height: lifesyncLogoHeight,
            ), // LIFESYNC logo
          ),
          SizedBox(height: 10),
          Text(
            'Harmonize Your Health, Soul, and Purpose',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 30),
          Image.asset(
            'lib/images/logolifesync.png',
            height: logoHeight,
          ), // Dart logo
          Spacer(), // Decrease the Spacer above if you want to move the logo higher
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('LOG IN'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                textStyle: TextStyle(
                  fontSize: 16,
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: OutlinedButton(
              onPressed: () {},
              child: Text('GET STARTED'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 16,
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                side: BorderSide(color: Colors.white),
              ),
            ),
          ),
          Spacer(flex: 3), // Increase the flex to push everything up
          Text(
            'BRIGHTQUEST',
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 16,
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
