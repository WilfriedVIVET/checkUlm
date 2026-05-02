import 'package:flutter/material.dart';
import 'package:ulm_app/widgets/appbar.dart';

class Flights extends StatelessWidget {
  const Flights({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(

      appBar: customAppBar(context),

    );
  }
}