import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  homeScreen({super.key});

  @override
  State<homeScreen> createState() => _State();
}

class _State extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F6FA),

      appBar: AppBar(
        backgroundColor: const Color(0xff020633),
        elevation: 8,
        centerTitle: true,
        title: const Text(
          "FAV Player",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Center(
          child: Column(
            children: [

              // Player Name
              const Text(
                "MOSALAH",
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff020633),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),

              const SizedBox(height: 25),

              // Player Image
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xff020633),
                  border: Border.all(
                    color: Color(0xff020633),
                    width: 3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(1),
                      blurRadius: 20,
                      spreadRadius: 4,
                      offset: const Offset(0, 8),
                    ),
                  ],
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd6Uq3GPyax8-067gGeEpdnkEYxv_2oaiBlfT6IEP9ng&s=10",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Divider
              const Divider(
                color: Color(0xff020633),
                thickness: 3,
                indent: 30,
                endIndent: 30,
              ),

              const SizedBox(height: 25),

              // Player Information
              _infoContainer(
                icon: Icons.person,
                text: "Mohamed Salah",
              ),

              const SizedBox(height: 18),

              _infoContainer(
                icon: Icons.flag,
                text: "EGYPT ",
              ),

              const SizedBox(height: 18),

              _infoContainer(
                icon: Icons.sports_soccer,
                text: "Trabzon Sport Club",
              ),

              const SizedBox(height: 35),

              // Follow Button
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_add,
                  color: Colors.white,
                  size: 21,
                ),
                label: const Text(
                  "Follow",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff020633),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 8,
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // UI component only
  Widget _infoContainer({
    required IconData icon,
    required String text,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: const Color(0xff020633),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),

          const SizedBox(width: 12),

          Flexible(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}