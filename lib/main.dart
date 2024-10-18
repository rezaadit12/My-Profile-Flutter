import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));

class LoginPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController rombelController = TextEditingController();
  final TextEditingController rayonController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white.withOpacity(0.9),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/asdfasdf.jpg'),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Form Input",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            labelText: 'Nama',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: rombelController,
                          decoration: InputDecoration(
                            labelText: 'Rombel',
                            prefixIcon: Icon(Icons.group),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: rayonController,
                          decoration: InputDecoration(
                            labelText: 'Rayon',
                            prefixIcon: Icon(Icons.location_city),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: schoolController,
                          decoration: InputDecoration(
                            labelText: 'Sekolah',
                            prefixIcon: Icon(Icons.school),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Kirim data ke halaman home
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => home(
                                    name: nameController.text,
                                    rombel: rombelController.text,
                                    rayon: rayonController.text,
                                    school: schoolController.text,
                                  ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.orange[700],
                            ),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class home extends StatelessWidget {
  final String name;
  final String rombel;
  final String rayon;
  final String school;

  const home({
    Key? key,
    required this.name,
    required this.rombel,
    required this.rayon,
    required this.school,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.white.withOpacity(0.9),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // Gambar Profil
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage("assets/images/asdfasdf.jpg"),
                    ),
                    SizedBox(height: 20),
                    // Nama
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(
                      color: Colors.orange,
                      thickness: 2,
                      indent: 50,
                      endIndent: 50,
                    ),
                    SizedBox(height: 20),
                    // Informasi Rombel
                    Row(
                      children: [
                        Icon(Icons.group, color: Colors.orange[700]),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Rombel: $rombel",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    // Informasi Rayon
                    Row(
                      children: [
                        Icon(Icons.location_city, color: Colors.orange[700]),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Rayon: $rayon",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    // Informasi Sekolah
                    Row(
                      children: [
                        Icon(Icons.school, color: Colors.orange[700]),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Sekolah: $school",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    // Tombol "See More"
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Aksi ketika tombol ditekan
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.orange[700],
                        ),
                        child: Text(
                          'See More',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
