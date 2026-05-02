import 'package:flutter/material.dart';
import 'package:ulm_app/widgets/appbar.dart';

class Checklist extends StatelessWidget {
  const Checklist({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(

      appBar: customAppBar(context),

    );
  }
}