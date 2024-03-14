
import 'package:flutter/material.dart';


class TextStateful extends StatelessWidget {
  const TextStateful({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.contain,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text('Text Stateful!', style: TextStyle(fontSize: 200),),
      ));
  }
}
