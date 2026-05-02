import 'package:flutter/material.dart';
import 'package:ulm_app/widgets/appbar.dart';

class Connexion extends StatelessWidget {
  const Connexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: customAppBar(context),

    );
  }
}