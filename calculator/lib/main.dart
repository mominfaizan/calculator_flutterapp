import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/scheduler.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var result = "";
  double evaluateExpression(String expression) {
    // Use the 'dart:math' library to evaluate the expression
    try {
      final parser = Parser();
      final exp = parser.parse(expression);
      final context = ContextModel();

      double result2 = exp.evaluate(EvaluationType.REAL, context);
      //  result2.toStringAsFixed(3);
      return result2;
    } catch (e) {
      print("Error evaluating expression: $e");
      return double.nan;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 40, 40),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Center(
              child: Container(
                width: 390,
                height: 100,
                color: Colors.grey.shade400,
                // child: Padding(
                //   padding: EdgeInsetsDirectional.fromSTEB(140, 14, 140, 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "$result",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                      child: Container(
                        width: 80,
                        height: 100,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red),
                            ),
                            onPressed: () {
                              List<String> c = result.split("");
                              if (c.length > 0) {
                                c.removeLast();
                              }
                              result = c.join();
                              setState(() {});
                            },
                            child: Icon(Icons.backspace)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 8, 8, 8),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              if (result.length < 16) {
                                result = result + "1";
                              }
                              setState(() {});
                            },
                            child: Text("1"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              if (result.length < 16) {
                                result = result + "2";
                              }
                              setState(() {});
                            },
                            child: Text("2"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              if (result.length < 16) {
                                result = result + "3";
                              }
                              setState(() {});
                            },
                            child: Text("3"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 0, 8),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              if (result.length < 16) {
                                result = result + "/";
                              }
                              setState(() {});
                            },
                            child: Text("/"))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 8, 8, 8),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              if (result.length < 16) {
                                result = result + "4";
                              }
                              setState(() {});
                            },
                            child: Text("4"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              if (result.length < 16) {
                                result = result + "5";
                              }
                              setState(() {});
                            },
                            child: Text("5"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              if (result.length < 16) {
                                result = result + "6";
                              }
                              setState(() {});
                            },
                            child: Text("6"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 0, 8),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              if (result.length < 16) {
                                result = result + "*";
                              }
                              setState(() {});
                            },
                            child: Text("*"))),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 8, 8, 8),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1)),
                      width: 80,
                      height: 80,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          onPressed: () {
                            if (result.length < 16) {
                              result = result + "7";
                            }
                            setState(() {});
                          },
                          child: Text("7"))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1)),
                      width: 80,
                      height: 80,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          onPressed: () {
                            if (result.length < 16) {
                              result = result + "8";
                            }
                            setState(() {});
                          },
                          child: Text("8"))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1)),
                      width: 80,
                      height: 80,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          onPressed: () {
                            if (result.length < 16) {
                              result = result + "9";
                            }
                            setState(() {});
                          },
                          child: Text("9"))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 0, 8),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1)),
                      width: 80,
                      height: 80,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          onPressed: () {
                            if (result.length < 16) {
                              result = result + "-";
                            }
                            setState(() {});
                          },
                          child: Text("-"))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 8, 8, 8),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              if (result.length < 16) {
                                result = result + "0";
                              }
                              setState(() {});
                            },
                            child: Text("0"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              if (result.length < 16) {
                                result = result + ".";
                              }
                              setState(() {});
                            },
                            child: Text("."))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Colors.cyanAccent.shade700),
                            ),
                            onPressed: () {
                              setState(() {});
                              if (result.length < 3) {
                                result = "Not Valid";
                              } else {
                                double result2 = evaluateExpression(result);
                                if (result2.toString().length > 13) {
                                  result = result2.toStringAsFixed(4);
                                } else {
                                  result = result2.toString();
                                }
                              }
                              setState(() {});
                            },
                            child: Text("="))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 0, 8),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        width: 80,
                        height: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black)),
                            onPressed: () {
                              if (result.length < 16) {
                                result = result + "+";
                              }
                              setState(() {});
                            },
                            child: Text("+"))),
                  ),
                ],
              ),
            ),
            // ),
            SizedBox(
              height: 4,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  result = "";
                  setState(() {});
                },
                child: Text(
                  "Clear Screen",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              "Develop By Faizan Momin",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
