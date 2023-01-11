import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pinCode extends StatefulWidget {
  const pinCode({super.key});

  @override
  State<pinCode> createState() => _pinCodeState();
}

class _pinCodeState extends State<pinCode> with SingleTickerProviderStateMixin {
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
        child: Center(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Введите пин-код',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: ((pin1) {}),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "0"),
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: ((pin2) {}),
                          decoration: InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            } else if (value.length == 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: ((pin3) {}),
                          decoration: InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            } else if (value.length == 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onSaved: ((pin4) {}),
                          decoration: InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            if (value.length == 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            ElevatedButton(onPressed: () {}, child: const Text('Подтвердить')),
      ),
    );
  }
}
