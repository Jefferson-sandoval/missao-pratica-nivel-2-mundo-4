import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lake Campground',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LakeCampgroundPage(),
    );
  }
}

class LakeCampgroundPage extends StatelessWidget {
  const LakeCampgroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lake Campground'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 8,
              margin: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.asset('images/lake.jpg'), // Certifique-se de que a imagem está na pasta 'images'
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Oeschinen Lake Campground',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Kandersteg, Switzerland',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: const [
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star_half, color: Colors.yellow),
                            SizedBox(width: 8),
                            Text('41 Reviews'),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
                              'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
                              'A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, '
                              'leads you to the lake, which warms to 20 degrees Celsius in the summer. '
                              'Activities enjoyed here include rowing, and riding the summer toboggan run.',
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton.icon(
                              onPressed: () {

                              },
                              icon: const Icon(Icons.phone),
                              label: const Text('CALL'),
                            ),
                            TextButton.icon(
                              onPressed: () {

                              },
                              icon: const Icon(Icons.directions),
                              label: const Text('ROUTE'),
                            ),
                            TextButton.icon(
                              onPressed: () {

                              },
                              icon: const Icon(Icons.share),
                              label: const Text('SHARE'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}