import 'package:flutter/material.dart'; // flutter ui library

void main() => runApp(Myapp()); 

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Activity #1')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Esguerra, Angela',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Global Reciprocal Colleges\nBSIT - Student',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'About me:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Hi Im Angela Esguerra, but you can call me Lay! Im 22 years old and currently live in Valenzuela City. In my free time, I love watching anime and K-dramas, and during my me-time, you can usually find me gaming—playing everything from Mobile Legends, CODM, and Valorant to CrossFire and Roblox.'),
            
              SizedBox(height: 15),
              Text(
                'Skills :',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('  Adaptability & Quick Learning Time Management'),
              SizedBox(height: 15),
              Text(
                'Contact me:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('09096547428'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                }, 
                child: Text('My Project'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Activity #1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Project 1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Classroom Management System \nEdiTrack is a comprehensive platform designed to streamline academic operations by automating attendance tracking, grade recording, and assignment distribution into a single user-friendly interface.'),
            SizedBox(height: 15),
            Text(
              'Project 2',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Login Module\nThe login module is designed to handle user authentication while prioritizing account security. When a user inputs their credentials, the system checks them against the database records.'),
            SizedBox(height: 15),
            Text(
              'Project 3',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('prototype\nFor my prototype, I imagine a clean and simple login screen where users can easily type their username and password. Visually, I imagine the interface featuring a sleek, minimalist design that gives instant feedback'),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('BACK'),
            ),
          ],
        ),
      ),
    );
  }
}
