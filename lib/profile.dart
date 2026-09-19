import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int likeCount = 0;
  int shareCount = 0;

  void likeProfile() {
    setState(() {
      likeCount++;
    });
  }

  void shareProfile() {
    setState(() {
      shareCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto profile
              const CircleAvatar(
                radius: 70,
                backgroundColor: Colors.deepPurple,
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              // Nama
              const Text(
                'Anggie Oktavia',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Deskripsi
              const Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              // Like dan Share
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Tombol Like
                  Column(
                    children: [
                      IconButton(
                        onPressed: likeProfile,
                        icon: const Icon(
                          Icons.thumb_up,
                          size: 35,
                        ),
                        color: Colors.blue,
                      ),
                      Text(
                        'Like: $likeCount',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 50),

                  // Tombol Share
                  Column(
                    children: [
                      IconButton(
                        onPressed: shareProfile,
                        icon: const Icon(
                          Icons.share,
                          size: 35,
                        ),
                        color: Colors.green,
                      ),
                      Text(
                        'Share: $shareCount',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Tombol kembali
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}