import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String question = 'What is your favorite fruit ?';
  String answer = '...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Update UI')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100.0,
              alignment: Alignment.center,
              child: Text(
                question,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Text(
                answer,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child:
                    const Text('Banana', style: TextStyle(color: Colors.black)),
                onPressed: () {
                  setState(() {
                    answer = 'Banana';
                  });
                },
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              color: Colors.orange,
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child:
                    const Text('Orange', style: TextStyle(color: Colors.black)),
                onPressed: () {
                  setState(() {
                    answer = 'Orange';
                  });
                },
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child:
                    const Text('Tomato', style: TextStyle(color: Colors.black)),
                onPressed: () {
                  setState(() {
                    answer = 'Tomato';
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
