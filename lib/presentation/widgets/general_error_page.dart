import 'package:flutter/material.dart';

class GeneralErrorPage extends StatelessWidget {
  const GeneralErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('Some error occured'),
      ),
    );
  }
}
