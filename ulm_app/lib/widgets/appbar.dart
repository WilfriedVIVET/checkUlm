import 'package:flutter/material.dart';
import 'package:ulm_app/pages/connexion.dart';
import 'package:ulm_app/pages/parametre.dart';
import 'package:ulm_app/site/home_page.dart';

PreferredSizeWidget customAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: const Color(0xFF2563EB),
    centerTitle: true,

    leading: InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context)=> HomePage()),
          );
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(
          "img/maison.png",
          width: 35,
          height: 35,
          color: Colors.white,
        ),
      ),
    ),

    actions: [
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Parametre()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            "img/reglages.png",
            width: 25,
            height: 25,
            color: Colors.white,
          ),
        ),
      ),

      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Connexion()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            "img/avatar.png",
            width: 25,
            height: 25,
            color: Colors.white,
          ),
        ),
      ),
    ],

    title: const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "checkULM",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE5E7EB),
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.flight_takeoff, color: Color(0xFFE5E7EB), size: 26),
          ],
        ),
        Text(
          "Votre copilote numérique",
          style: TextStyle(fontSize: 12, color: Color(0xFFCBD5E1)),
        ),
      ],
    ),
  );
}
