import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: BigButton(
          title: 'Button',
          onTap: () {
            print('클릭!!');
          },
        ),
      ),
    );
  }
}

class BigButton extends StatefulWidget {
  final String title;
  final void Function() onTap;

  const BigButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  State<BigButton> createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        print('onTapDown');
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        print('onTapUp');
        setState(() {
          isPressed = false;
        });
        widget.onTap.call();
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isPressed ? Colors.grey : Colors.green,
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(width: 30),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
