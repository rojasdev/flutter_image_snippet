import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image and Grid Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image and Grid Example'),
        ),
        body: ImageGrid(),
      ),
    );
  }
}

class ImageGrid extends StatelessWidget {
  ImageGrid({super.key});

  final List<String> imageUrls = [
    'images/image0.png',
    'images/image1.png',
    'images/image2.png',
    'images/image3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 200, // Adjust height as needed
          color: Colors.grey[300],
          child: Image.network(
            'https://www.usls.edu.ph/uploads/icons/Affiliates/3.png', // Top image URL
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
            child: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:
                  const EdgeInsets.all(20.0), // Adjust the padding as needed
              child: Image.asset(
                'images/image$index.png',
                fit: BoxFit.cover,
              ),
            );
          },
        )),
      ],
    );
  }
}
