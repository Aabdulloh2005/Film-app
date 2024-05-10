import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StarRating(),
    );
  }
}

class StarRating extends StatefulWidget {
  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _rating = 0;

  Widget _buildStar(int index) {
    IconData iconData = index <= _rating ? Icons.star : Icons.star_border;
    Color color = index <= _rating ? Colors.orange : Colors.grey;
    return GestureDetector(
      onTap: () {
        setState(() {
          _rating = index;
        });
      },
      child: Icon(
        iconData,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ilovani Baholash'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Ilovani baholang:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) => _buildStar(index)),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                print('Foydalanuvchining bahosi: $_rating');
              },
              child: Text('Baholash'),
            ),
          ],
        ),
      ),
    );
  }
}
