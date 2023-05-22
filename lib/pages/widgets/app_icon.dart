import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  Color backgroundColor;
  final Color iconColor;
  final double size;
  final double iconSize;

  AppIcon(
      {super.key,
      required this.icon, // required one
      this.backgroundColor = const Color(0xFFfcf4e4),
      this.iconColor = Colors.grey,
      this.size = 40, // default icon container size
      this.iconSize=16 // it is optional with .backgroundColor, iconColor, size,iconSize 
      }
    );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size, // size 40
      height: size, // size 40
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          color: backgroundColor
        ),
      child: Icon(                   
        icon,
        color: iconColor,
        size: iconSize,
        
      ),
    );
  }
}
