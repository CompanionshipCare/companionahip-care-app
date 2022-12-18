import 'package:flutter/material.dart';

void main() {
  runApp(const CompanionshipCareApp());
}

class CompanionshipCareApp extends StatelessWidget {
  static const List<String> circles = [
    'Jane',
    'Henry',
  ];

  const CompanionshipCareApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Companionship Care';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: circles.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(circles[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CircleDetails(
                      circleName: circles[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class CircleDetails extends StatelessWidget {
  const CircleDetails({super.key, required this.circleName});
  final String circleName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(circleName),
      ),
      body: const Text("Circle details..."),
    );
  }
}
