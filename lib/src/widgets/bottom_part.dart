import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({
    super.key,
  });

  static bool isRecoding = false;

  static String micIcon = "assets/svg/mic-icon.svg";
  static String gestureIcon = "assets/svg/gesture-icon.svg";
  final double iconSize = 26;
  static double radius = 28;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Button(isRecoding: isRecoding),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 42,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radius),
                    bottomLeft: Radius.circular(radius),
                  ),
                ),
                child: SvgPicture.asset(
                  gestureIcon,
                  height: iconSize,
                  width: iconSize,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Container(
                width: 1.25,
                height: 42,
                decoration: const BoxDecoration(
                                    border: Border(
                    right: BorderSide(
                      color: Color.fromARGB(255, 48, 48, 48),
                      width: 1.25,
                    ),
                  ),
                )
              ),
              Container(
                height: 42,
                width: 90,
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(radius),
                      bottomRight: Radius.circular(radius),
                    ),
                  ),
                ),
                child: SvgPicture.asset(
                  micIcon,
                  height: iconSize + 5,
                  width: iconSize + 5,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.isRecoding,
  });

  final bool isRecoding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => {
        // TODO: Implement clicking logic
        // TODO: Implement recording
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          const Background(),
          isRecoding ? const StopButton() : const ClickButton(),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 158,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: ShapeDecoration(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 2,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}

class StopButton extends StatelessWidget {
  const StopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 31,
      height: 31,
      decoration: ShapeDecoration(
        color: const Color(0xFFECECEC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.50),
        ),
      ),
    );
  }
}

class ClickButton extends StatelessWidget {
  const ClickButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: const ShapeDecoration(
        color: Color(0x00D9D9D9),
        shape: OvalBorder(
          side: BorderSide(width: 6, color: Colors.white),
        ),
      ),
    );
  }
}
