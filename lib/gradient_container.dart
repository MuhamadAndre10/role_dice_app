import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// make a variable
const topAllignment = Alignment.topLeft;

// function

// make a custom widget
/// class gradientContainer merupakan turunan dari class StatelessWidget dimana statelessWidget merupakan built in class flutter
class GradientContainer extends StatelessWidget {
  // Function Constructor
  const GradientContainer({super.key});

  /// @override merupakan metadata, yang optional tapi harus di implementasikan
  @override

  /// context juga merupakan metadata, yang optional tapi harus di implementasikan.
  /// Function build wajib mengembalikan Widget,
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.lightBlue],
          begin: topAllignment,
        ),
      ),
      child: const Center(child: DiceRolles()),
    );
  }
}
