import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white, // Warna putih untuk ikon back
          ),
          onPressed: () {
            // Navigate back to the main screen
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        backgroundColor: Colors.teal, // Warna teal untuk AppBar
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri seluruh konten
            children: [
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/asdfasdf.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Muhamad Reza Aditya',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[800], // Warna teks
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'SMK Wikrama Bogor - PPLG',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.teal[600], // Warna teks subtitle
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange[100], // Warna latar belakang konten
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withOpacity(0.5), // Warna shadow
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'About',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87, // Warna teks heading
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Saya adalah seorang siswa di SMK Wikrama Bogor dengan mengambil jurusan Pengembangan Perangkat Lunak Dan Gim (PPLG), saya ingin menjadi programmer sukses yang berada di bidang backend',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                          color: Colors.black54, // Warna teks isi
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[100], // Warna latar belakang konten
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5), // Warna shadow
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Skills',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87, // Warna teks heading
                        ),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: const [
                          SkillChip(label: 'HTML', color: Colors.orange),
                          SkillChip(label: 'CSS', color: Colors.blue),
                          SkillChip(label: 'JavaScript', color: Colors.yellow),
                          SkillChip(label: 'PHP', color: Colors.purple),
                          SkillChip(label: 'MySQL', color: Colors.green),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[100], // Latar belakang yang lembut
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  final Color color;

  const SkillChip({Key? key, required this.label, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white, // Warna teks pada chip
        ),
      ),
      backgroundColor: color, // Warna latar belakang chip
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    );
  }
}
