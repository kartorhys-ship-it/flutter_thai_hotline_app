import 'package:flutter/material.dart';

import '../main.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(appName)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Text(
              'ผู้จัดทำ',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            Image.asset('assets/images/aboutme/saulogo.png', height: 120),
            const SizedBox(height: 16),
            const Text('มหาวิทยาลัยเอเชียอาคเนย์', textAlign: TextAlign.center),
            const SizedBox(height: 24),
            const CircleAvatar(
              radius: 60,
              child: Icon(Icons.person_outline, size: 58),
            ),
            const SizedBox(height: 20),
            const Text('Assignment 07', textAlign: TextAlign.center),
            const Text('flutter_thai_hotline_app', textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
