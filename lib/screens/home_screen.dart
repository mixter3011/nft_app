import 'package:flutter/material.dart';
import 'package:nft_katsuma/pages/login_page.dart';
import 'package:nft_katsuma/widgets/image_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(100, 0, 0, 0),
      body: Stack(
        children: [
          const Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  ImageListView(
                    startIndex: 1,
                    duration: 25,
                  ),
                  SizedBox(height: 10),
                  ImageListView(
                    startIndex: 11,
                    duration: 45,
                  ),
                  SizedBox(height: 10),
                  ImageListView(
                    startIndex: 21,
                    duration: 65,
                  ),
                  SizedBox(height: 10),
                  ImageListView(
                    startIndex: 31,
                    duration: 30,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 24,
            right: 24,
            child: SizedBox(
              height: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'ART WITH NFT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Check out this fresh coin mint for a new NFT',
                    style: TextStyle(
                      color: Colors.white70,
                      height: 1.2,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage(onTap: null,)),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 12, 234),
                        elevation: 4,
                      ),
                      child: const Text(
                        'Discover!',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
