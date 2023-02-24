import 'dart:math';

import 'package:flutter/material.dart';
import 'package:suitable_weight_2/resultPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageTest();
  }
}

class HomePageTest extends State<HomePage> {
  bool isMale = true, isFemale = false;
  double value = 180;
  int weight = 70;
  int age = 21;
  var color1 = const Color(0xffdc4168);
  var color2 = const Color(0xff1d2136);
  var color3 = const Color(0xff26263c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff1d2136),
        appBar: AppBar(
          backgroundColor: const Color(0xff1d2136),
          centerTitle: true,
          title: const Text(
            'Suitable Weight',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                          isFemale = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(32),
                        margin: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: isMale
                                ? const Color(0xffff0058)
                                : const Color(0x5047419c)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              margin: const EdgeInsets.all(12),
                              child: const Icon(
                                Icons.male,
                                size: 60,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Male',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                          isMale = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(32),
                        margin: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: isFemale
                                ? const Color(0xffff0058)
                                : const Color(0x5047419c)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              margin: const EdgeInsets.all(12),
                              child: const Icon(
                                Icons.female,
                                size: 60,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Female',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0x5047419c),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${value.round()}',
                      style: const TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Slider(
                      value: value,
                      onChanged: (double val) => setState(() => value = val),
                      min: 100,
                      max: 220,
                      divisions: 120,
                      activeColor: const Color(0xffff0058),
                    ),
                  ],
                ),
              )),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      color: const Color(0x5047419c),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Weight',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                        Text(
                          '${weight.round()}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              onPressed: () {
                                setState(() {
                                  if (weight <= 30) {
                                    weight = weight;
                                  } else {
                                    --weight;
                                  }
                                });
                              },
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            FloatingActionButton(
                                backgroundColor: Colors.grey,
                                onPressed: () {
                                  setState(() {
                                    ++weight;
                                  });
                                },
                                child: const Icon(Icons.add))
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                        color: const Color(0x5047419c),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        const Text(
                          'Age',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                        Text('$age',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              onPressed: () {
                                if (age <= 10) {
                                  age = age;
                                } else {
                                  setState(() {
                                    --age;
                                  });
                                }
                              },
                              child: const Icon(
                                Icons.remove,
                              ),
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            FloatingActionButton(
                                backgroundColor: Colors.grey,
                                onPressed: () {
                                  setState(() {
                                    ++age;
                                  });
                                },
                                child: const Icon(
                                  Icons.add,
                                ))
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ),
              Container(
                  height: 68,
                  width: double.infinity,
                  margin: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffff0058)),
                  child: TextButton(
                      onPressed: () {
                        var result = weight / pow(value / 100, 2);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Result(
                                    result: result, isMale: isMale, age: age)));
                      },
                      child: const Text(
                        'Calculate',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      )))
            ]),
          ),
        ));
  }
}
