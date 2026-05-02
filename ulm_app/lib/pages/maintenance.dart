import 'package:flutter/material.dart';
import 'package:ulm_app/widgets/appbar.dart';

class Maintenance extends StatelessWidget {
  const Maintenance({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(

      appBar: customAppBar(context),

    );
  }
}