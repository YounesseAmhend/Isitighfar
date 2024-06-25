import 'package:flutter/cupertino.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });
  static int level = 3;
  static int currentExp = 60;
  static int targetExp = 120;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Level(level: level),
          Stack(
            children: [
              const WhiteBar(),
              BlueBar(currentExp: currentExp, targetExp: targetExp),
              ExpText(currentExp: currentExp, targetExp: targetExp),
            ],
          ),
        ],
      ),
    );
  }
}

class ExpText extends StatelessWidget {
  const ExpText({
    super.key,
    required this.currentExp,
    required this.targetExp,
  });

  final int currentExp;
  final int targetExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.sizeOf(context).width,
      height: 16,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        '$currentExp/$targetExp',
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF00525D),
          fontSize: 12,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: 1,
        ),
      ),
    );
  }
}

class WhiteBar extends StatelessWidget {
  const WhiteBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 16,
      decoration: ShapeDecoration(
        color: const Color(0xFFE9E9E9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

class BlueBar extends StatelessWidget {
  const BlueBar({
    super.key,
    required this.currentExp,
    required this.targetExp,
  });

  final int currentExp;
  final int targetExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: currentExp / targetExp * MediaQuery.sizeOf(context).width,
      height: 16,
      decoration: ShapeDecoration(
        color: const Color(0xFF00A9CF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

class Level extends StatelessWidget {
  const Level({
    super.key,
    required this.level,
  });

  final int level;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 8),
          height: 11,
          child: Text(
            'LEVEL $level',
            textAlign: TextAlign.left,
            style: const TextStyle(
              
              color: Color(0xFF868686),
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0.12,
            ),
          ),
        ),
      ],
    );
  }
}
