import 'package:flutter/material.dart';
import 'package:solo_calculator_app/components/button.dart';
import 'package:solo_calculator_app/components/superscripts.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<String> mathStuff = [
    "SHIFT", "ALPHA", "\u2190", "\u2192", "MODE", "2nd",
    "CALC", "\u222B dx", "\u25B2", "\u25BC", "x\u207B\u00B9","Log\u2090x",
    "\u220E\u2044\u220E", "\u221A\u220E", "x\u2072", "x\u207F", "Log", "Ln",
    "(-)", "\u2218 '\"", "hyp", "Sin", "Cos", "Tan",
    "RCL", "ENG", "(", ")", "S\u21D4D", "M+"
  ];

  final List<Superscript> superScripts_1 = [
    const Superscript(), const Superscript(),const Superscript(), const Superscript(), const Superscript(), const Superscript(),
    const Superscript(main: "SOLVE", secondary: "="), const Superscript(main: "d/dx", secondary: ":"), const Superscript(main: ""), const Superscript(main: ""), const Superscript(main: "x!"), const Superscript(main: "\u03A3", secondary: "\u03A0"),
    const Superscript(main: "a b", secondary: "+R"), const Superscript(main: "\u221B\u220E", secondary: "mod"), const Superscript(main: "x\u2073", secondary: "0.x\u207B"), const Superscript(main: "\u220E\u221A\u220E", secondary: ""), const Superscript(main: "10\u207F", secondary: ""), const Superscript(main: "\u212F", secondary: "t"),
    const Superscript(main: "\u2220", secondary: "a"), const Superscript(main: "FACT", secondary: "b"), const Superscript(main: "Abs", secondary: "c"), const Superscript(main: "Sin\u207B\u2071", secondary: "d"), const Superscript(main: "Cos\u207B\u2071", secondary: "e"), const Superscript(main: "Tan\u207B\u2071", secondary: "f"),
    const Superscript(main: "STO", secondary: "CLRv"), const Superscript(main: "i", secondary: "Cot\u207B\u2071"), const Superscript(main: "%", secondary: "Cot\u207B\u2071",), const Superscript(main: ",", secondary: "x"), const Superscript(main: "a/b\u2192a b\u2044c", secondary: "y"), const Superscript(main: "M-", secondary: "m")
  ];

  final List<String> actual = [
    "7", "8", "9", "DEL", "AC",
    "4", "5", "6", "x", "\u00F7",
    "1", "2", "3", "+", "-",
    "0", ".", "Exp", "Ans", "="
  ];

  final List<Superscript> superScripts_2 = [
    const Superscript(main: "CONST"), const Superscript(main: "CONV", secondary: "SI"), const Superscript(main: "Limit", secondary: "\u221E"), const Superscript(main: "", secondary: ""), const Superscript(main: "CLR ALL", secondary: ""),
    const Superscript(main: "MATRIX"), const Superscript(main: "VECTOR"), const Superscript(main: "FUNC", secondary: "HELP"), const Superscript(main: "nPr", secondary: "GCD"), const Superscript(main: "nCr", secondary: "LCM"),
    const Superscript(main: "STAT"), const Superscript(main: "CMPLX"), const Superscript(main: "DISTR"), const Superscript(main: "Pol", secondary: "Ceil"), const Superscript(main: "Rec", secondary: "Floor"),
    const Superscript(main: "COPY", secondary: "PASTE"), const Superscript(main: "Ran#", secondary: "RanInt"), const Superscript(main: "\u03C0", secondary: "\u212F"), const Superscript(secondary: "PreAns"), const Superscript(main: "History")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 110,
                      color: Colors.white
                    ),
                  ),
              ),
              SizedBox(
                height: 280,
                child: GridView.builder(padding:const EdgeInsetsDirectional.all(0.2),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                  childAspectRatio: 1.35,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mathStuff.length,
                itemBuilder: ((context, index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        superScripts_1[index],
                        const CalcButton(
                          text: "SHIFT",
                          bgColor: Colors.yellow,
                          textColor: Colors.black
                        ),
                      ],
                    );
                  }
                  if (index == 1) {
                    return Column(
                      children: [
                        superScripts_1[index],
                        CalcButton(
                          text: "ALPHA",
                          bgColor: Colors.purple.shade400,
                          textColor: Colors.white
                        ),
                      ],
                    );
                  }
                  return Column(
                    children: [
                      superScripts_1[index],
                      CalcButton(
                        text: mathStuff[index],
                        bgColor: Colors.grey.shade500,
                        textColor: Colors.white,
                      ),
                    ],
                  );
                })
                ),
              ),
              SizedBox(
                height: 210,
                child: GridView.builder(
                  padding: const EdgeInsets.all(0.1),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 1.8,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: (context, index){
                    if (index == 3) {
                    return Column(
                      children: [
                        superScripts_2[3],
                        const CalcButton(
                          text: "SHIFT",
                          bgColor: Colors.orange,
                          textColor: Colors.black
                        ),
                      ],
                    );
                  }
                    if (index == 4) {
                    return Column(
                      children: [
                        superScripts_2[4],
                        const CalcButton(
                          text: "AC",
                          bgColor: Colors.orange,
                          textColor: Colors.black
                        ),
                      ],
                    );
                  }
                  return Column(
                    children: [
                      superScripts_2[index],
                      CalcButton(
                        text: actual[index],
                        bgColor: Colors.grey.shade900,
                        textColor: Colors.white,
                      ),
                    ],
                  );
                }
                ),
              )
            ]
          ),
        ),
      )
    );
  }
}