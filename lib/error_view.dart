import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Página 404', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),
            const Text('No se encontró la página', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),
            FilledButton(child: const Text('Regresar'), onPressed: () => Navigator.pushNamed(context, '/stateful'))
            
          ],
        ),
      );
  }
}