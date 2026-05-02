import 'package:flutter/material.dart';
import 'package:ulm_app/widgets/appbar.dart';
import 'package:ulm_app/pages/checklist.dart';
import 'package:ulm_app/pages/flights.dart';
import 'package:ulm_app/pages/maintenance.dart';
import 'package:ulm_app/widgets/home_card.dart';
import 'package:ulm_app/widgets/info_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),

      body: Container(
        color: const Color(0xFF0B1220),

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // 🔵 HEADER
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color(0xFF111827),
                    border: Border.all(color: const Color(0xFF2563EB), width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "🧑‍✈️ PILOTE CONNECTÉ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 12,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Bienvenue pilote",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Que voulez-vous faire aujourd’hui ?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // 🔧 MODULES (wrap responsive)
                Center(
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: [

                      HomeCard(
                        title: "CHECKLIST",
                        subtitle: "Pré-vol • Décollage • Atterrissage",
                        image: "img/checklist.png",
                        color: Colors.blue,
                        border: Colors.blue,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Checklist()),
                          );
                        },
                      ),

                      HomeCard(
                        title: "CARNET DE VOL",
                        subtitle: "Heures • Missions • Historique",
                        image: "img/avion.png",
                        color: Colors.green,
                        border: Colors.green,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Flights()),
                          );
                        },
                      ),

                      HomeCard(
                        title: "MAINTENANCE",
                        subtitle: "Suivi • Échéances • Sécurité",
                        image: "img/molette.png",
                        color: Colors.orange,
                        border: Colors.orange,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Maintenance()),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // 📊 INFOS EN LIGNE
                Row(
                  children: [

                    Expanded(
                      child: InfoCard(
                        title: "Heures Totales",
                        subtitle: "Toutes Machines",
                        info: "154.4h",
                        image: "img/horloge.png",
                        color: Colors.blue,
                        border: Colors.blue,
                        onTap: () {},
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: InfoCard(
                        title: "Prochain vol",
                        subtitle: "test",
                        info: "24 mai 2026",
                        image: "img/calendrier.png",
                        color: Colors.green,
                        border: Colors.green,
                        onTap: () {},
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: InfoCard(
                        title: "Prochaine échéance",
                        subtitle: "dans 12h",
                        info: "Vidange moteur",
                        image: "img/molette.png",
                        color: Colors.orange,
                        border: Colors.orange,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}