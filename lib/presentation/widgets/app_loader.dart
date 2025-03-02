import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget {
  final double size;
  final Color color;

  const AppLoader({
    super.key,
    this.size = 30.0,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        radius: size / 2,
        color: color,
      ),
    );
  }
}
