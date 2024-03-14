
import 'package:flutter/material.dart';


class TextProvider extends StatelessWidget {
  const TextProvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.contain,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text('Text Provider!', style: TextStyle(fontSize: 200),),
      ));
  }
}
