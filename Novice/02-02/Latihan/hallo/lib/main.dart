import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//Print Hello World sederhana

void main() {
  runApp(
    Center(
      child: Text(
        'Hallo, Hallo',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
