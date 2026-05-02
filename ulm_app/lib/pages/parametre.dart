import 'package:flutter/material.dart';
import 'package:ulm_app/widgets/appbar.dart';

class Parametre extends StatelessWidget {
  const Parametre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
    );
  }
}