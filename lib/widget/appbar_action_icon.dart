import 'package:flutter/material.dart';

class AppBarActionIcon extends StatelessWidget {
  const AppBarActionIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final iconSize = mediaQuery.size.width * 0.07;

    return Stack(
      children: [
        Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black,
          size: iconSize,
        ),
        Positioned(
          top: iconSize * 0.0,
          right: iconSize * 0.0,
          child: Container(
            width: iconSize * 0.5,
            height: iconSize * 0.5,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffc32c37),
            ),
            child: Center(
              child: Text(
                "3",
                style: TextStyle(fontSize: iconSize * 0.3, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
