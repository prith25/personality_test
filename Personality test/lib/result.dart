import 'package:flutter/material.dart';

class resultPage extends StatelessWidget {
  int E = 0;
  int N = 0;
  int A = 0;
  int O = 0;
  int C = 0;
  double extroversion = 0.0;
  double agreeableness = 0.0;
  double conscientiousness = 0.0;
  double neuroticism = 0.0;
  double openness_to_experience = 0.0;

  resultPage(this.E, this.A, this.C, this.N, this.O);

  void Calc() {
    extroversion = (E / 40) * 100;
    agreeableness = (A / 40) * 100;
    conscientiousness = (C / 40) * 100;
    neuroticism = (N / 40) * 100;
    openness_to_experience = (O / 40) * 100;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Extroversion'),
        ],
      ),
    );
  }
}
