import 'package:flutter/material.dart';
import 'package:flutter_ui/components/my_second_screen.dart';

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('내 첫번째 화면'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('클릭!!!');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const MySecondScreen()),
                );
              },
              child: const Text('두번째 화면으로'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
