import 'package:chat/page/pinCode.dart';
import 'package:flutter/material.dart';

class email extends StatefulWidget {
  const email({super.key});

  @override
  State<email> createState() => _emailState();
}

class _emailState extends State<email> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Введите почту!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
          )
        ],
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pinCode()),
              );
            },
            child: const Text('Продолжить')),
      ),
    );
  }
}
