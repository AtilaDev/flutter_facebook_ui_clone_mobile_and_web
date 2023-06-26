import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final Function()? onPressed;

  const FlatButton({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: color,
      ),
      label: Text(label),
    );
  }
}
