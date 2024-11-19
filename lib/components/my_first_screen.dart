import 'package:flutter/material.dart';
import 'package:flutter_ui/components/my_second_screen.dart';
import 'package:flutter_ui/components/my_third_screen.dart';

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(),
              Row(
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
                  ElevatedButton(
                    onPressed: () {
                      print('클릭!!!');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const MyThirdScreen()),
                      );
                    },
                    child: const Text('세번째 화면으로'),
                  ),
                ],
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Image.network(
                'https://img.khan.co.kr/news/2023/05/12/news-p.v1.20230512.e5fffd99806f4dcabd8426d52788f51a_P1.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.asset('assets/iu.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
