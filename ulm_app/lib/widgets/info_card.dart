import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String info;
  final String image;
  final Color color;
  final Color border;
  final VoidCallback onTap;

  const InfoCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.info,
    required this.image,
    required this.color,
    required this.border,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        height: 90,
        width: double.infinity,

        padding: const EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 30, 42, 71),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: border, width: 1),
        ),

        child: Row(
          children: [

            // 🖼 IMAGE
            Image.asset(
              image,
              width: 40,
              height: 40,
              color: color,
            ),

            const SizedBox(width: 10),

            // 📄 TEXTE 
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: color,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    info,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),

                  Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}