import 'package:flutter/material.dart';

class MyThirdScreen extends StatelessWidget {
  const MyThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('세번째 화면'),
      ),
      body: ListView(
        children: [
          Image.asset('assets/iu.jpg'),
          Image.asset('assets/iu.jpg'),
          Image.asset('assets/iu.jpg'),
          Image.asset('assets/iu.jpg'),
          Image.asset('assets/iu.jpg'),
          Image.asset('assets/iu.jpg'),
        ],
      ),
    );
  }
}
