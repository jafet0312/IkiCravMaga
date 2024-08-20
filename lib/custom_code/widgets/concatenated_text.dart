// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ConcatenatedText extends StatefulWidget {
  final double? width;
  final double? height;
  final String firstText;
  final String secondText;
  final double? fontSize;
  final Color? textColor;
  final String? fontFamily;

  const ConcatenatedText({
    super.key,
    this.width,
    this.height,
    required this.firstText,
    required this.secondText,
    this.fontSize,
    this.textColor,
    this.fontFamily,
  });

  @override
  State<ConcatenatedText> createState() => _ConcatenatedTextState();
}

class _ConcatenatedTextState extends State<ConcatenatedText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 130,
      height: widget.height ?? 30,
      child: Text(
        widget.firstText.isNotEmpty || widget.secondText.isNotEmpty
            ? '${widget.firstText}${widget.secondText}'
            : 'Texto predeterminado', // Texto por defecto para el editor
        style: TextStyle(
          fontSize: widget.fontSize ?? 16.0,
          color: widget.textColor ?? Colors.black,
          fontFamily: widget.fontFamily ?? 'Arial',
        ),
      ),
    );
  }
}
