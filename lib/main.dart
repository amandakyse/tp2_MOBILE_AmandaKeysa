
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const DigitalBusinessCardApp());
}

const Color barbiePink = Color(0xFFE0218A);
const Color darkPink = Color(0xFFB51769);
const Color lightPink = Color(0xFFFFC1DC);
const Color softPink = Color(0xFFFFF8FC);

class DigitalBusinessCardApp extends StatelessWidget {
  const DigitalBusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barbie Digital Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightPink,
        useMaterial3: true,
      ),
      home: const BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  Widget buildCard({
    required IconData icon,
    required String title,
  }) {
    return SizedBox(
      width: 340,
      height: 70,
      child: Card(
        margin: EdgeInsets.zero,
        color: softPink,
        elevation: 4,
        shadowColor: barbiePink.withOpacity(0.18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Color(0xFFFF8FC7),
            width: 1.2,
          ),
        ),
        child: Center(
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            leading: Icon(
              icon,
              color: barbiePink,
              size: 28,
            ),
            title: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: darkPink,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFFC1DC),
              Color(0xFFFFD6E8),
              Color(0xFFFFB6D9),
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Foto profil
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: softPink,
                      border: Border.all(
                        color: barbiePink,
                        width: 3,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: barbiePink.withOpacity(0.20),
                          blurRadius: 12,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: const CircleAvatar(
                      radius: 65,
                      backgroundColor: softPink,
                      backgroundImage: AssetImage(
                        'assets/images/jennie.jpg',
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Nama
                  Text(
                    'Amanda Keysa Maulida',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: darkPink,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Status mahasiswa
                  Text(
                    'MAHASISWA TEKNIK INFORMATIKA',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: darkPink,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Garis pemisah sederhana
                  Container(
                    width: 150,
                    height: 2,
                    color: barbiePink,
                  ),

                  const SizedBox(height: 20),

                  buildCard(
                    icon: Icons.phone,
                    title: '+62 812 2456 1175',
                  ),

                  const SizedBox(height: 12),

                  buildCard(
                    icon: Icons.email,
                    title: 'sakey@gmail.com',
                  ),

                  const SizedBox(height: 12),

                  buildCard(
                    icon: Icons.camera_alt,
                    title: 'Instagram: amandakyse',
                  ),

                  const SizedBox(height: 12),

                  buildCard(
                    icon: Icons.music_note,
                    title: 'TikTok: @keyseeu',
                  ),

                  const SizedBox(height: 12),

                  buildCard(
                    icon: Icons.sports_esports,
                    title: 'Roblox: Sakeysa4',
                  ),

                  const SizedBox(height: 20),

                  // Tulisan penutup
                  Text(
                    'Barbie in my own world',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: darkPink,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}