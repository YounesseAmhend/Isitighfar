import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

class TodayCounter extends StatelessWidget {
  const TodayCounter({
    super.key,
  });

  static DateTime todayDate = DateTime.now();
  static DateFormat formatter = DateFormat('EEE, dd MMMM yyyy');
  static String formattedDate = formatter.format(todayDate).toUpperCase();
  static int counter = 99;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TodaysDate(formattedDate: formattedDate),
          Counter(counter: counter),
          
        ],
      ),
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text(
      counter.toString(),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 80,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 0.02,
      ),
    );
  }
}

class TodaysDate extends StatelessWidget {
  const TodaysDate({
    super.key,
    required this.formattedDate,
  });

  final String formattedDate;

  @override
  Widget build(BuildContext context) {
    return Text(
      formattedDate,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Color(0xFF808080),
        fontSize: 15,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 0.10,
      ),
    );
  }
}
