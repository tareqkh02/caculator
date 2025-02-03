import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_calculater/class/button.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(
          texteq,
          style: TextStyle(
            color: Color.fromRGBO(129, 129, 129, 1),
            fontSize: 10,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Color.fromRGBO(66, 66, 66, 1),
            fontSize: 10,
          ),
        ),
        Row(
          children: [
            Button(
              title: '1',
              oppress: () {
                onclick(1);
              },
            ),
            Button(
              title: '2',
              oppress: () {
                onclick(2);
              },
            ),
            Button(
              title: '3',
              oppress: () {
                onclick(3);
              },
            ),
            Button(
              title: '4',
              oppress: () {
                onclick(4);
              },
            ),
          ],
        ),
        Row(
          children: [
            Button(
              title: '5',
              oppress: () {
                onclick(5);
              },
            ),
            Button(
              title: '6',
              oppress: () {
                onclick(6);
              },
            ),
            Button(
              title: '7',
              oppress: () {
                onclick(7);
              },
            ),
            Button(
              title: '8',
              oppress: () {
                onclick(8);
              },
            ),
          ],
        ),
        Row(
          children: [
            Button(
              title: '9',
              oppress: () {
                onclick(9);
              },
            ),
            Button(
              title: '+',
              oppress: () {
                opration('+');
              },
            ),
            Button(
              title: '-',
              oppress: () {
                opration('-');
              },
            ),
            Button(
              title: '*',
              oppress: () {
                opration('*');
              },
            ),
            Button(
              title: '/',
              oppress: () {
                opration('/');
              },
            )
          ],
        ),
        Row(
          children: [
            Button(
              title: '=',
              oppress: () {
                onclick(9);
              },
            ),
            Button(
              title: 'C',
              oppress: () {
                supp(1);
              },
            ),
            Button(
              title: 'Ac',
              oppress: () {
                supp(1);
              },
            ),
          ],
        ),
      ]),
    );
  }

  String? texteq;
  String? text;
  String? operator;
  int total = 0;
  int x1 = 0;
  int x2 = 0;
  int equation = 0;
onclick(int v) {
    setState(() {
      if (total != 0) {
        total = 0;
        x1 = v;
        return;
      }
      if (x1 == 0) {
        x1 = v;
        return;
      }
      if (operator == 0) {
        x1 = int.parse('$x1$v');
        return;
      }
      if (x2 == 0) {
        x2 = v;
        return;
      }
      x2 = int.parse('$x2$v');
    });
  }

opration(operator) {
    setState(() {
      switch (operator) {
        case '+':
          total = x1 + x2;
          break;
        case '-':
          total = x1 - x2;
          break;
        case '*':
          total = x1 * x2;
          break;
        case '/':
          if (x2 == 0) {
            return;
          }
          total = x1 ~/ x2;
          break;
      }
    });
  }

supp(int s) {
    if (s == 1) {
      setState(() {
        total = 0;
        equation = 0;
      });
    }
  }

  
}

