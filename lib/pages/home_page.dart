import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nft_katsuma/components/my_bottombar.dart';
import 'package:nft_katsuma/features/nftcard.dart';
import 'package:nft_katsuma/themes/glassbox.dart';

class HomePage extends StatefulWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
  class _HomePageState extends State<HomePage>{

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  int _currentBottomIndex = 0;
  void _handleBottomIndexChange(int? index){
    setState(() {
      _currentBottomIndex = index!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search), color: Colors.white,),
          Padding(
            padding: const EdgeInsets.only(left: 6.0), // Adjust the padding as needed
            child: Container(
              padding: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
              ),
              child: ActionChip(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(color: Colors.white),
                ),    
                backgroundColor: Colors.black,
                label: Row(
                  children: [
                    const Icon(Icons.wallet, color: Colors.white),
                    const Padding(padding: EdgeInsets.only(right: 10.0)),
                    RichText(
                      text: TextSpan(
                        text: "0.00  ",
                        style: TextStyle(
                          color: Colors.green.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                        children: const <TextSpan>[TextSpan(text: "ETH")],
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  // Add your ActionChip onPressed functionality here
                },
              ),
            ),
          ),
        ],
        leading: IconButton(
          color: Colors.white,
          onPressed: signUserOut,
          icon: const Icon(Icons.logout),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: (1/ 1.5),
          crossAxisCount: 2,
        ),
        itemCount: 40, 
        itemBuilder: (BuildContext context, index) {
          return const NftCard(imagePaths: [
            'lib/images/1.png',
            'lib/images/2.png',
            'lib/images/3.png',
            'lib/images/4.png',
            'lib/images/5.png',
            'lib/images/6.png',
            'lib/images/7.png',
            'lib/images/8.png',
            'lib/images/9.png',
            'lib/images/10.png',
            'lib/images/11.png',
            'lib/images/12.png',
            'lib/images/13.png',
            'lib/images/14.png',
            'lib/images/15.png',
            'lib/images/16.png',
            'lib/images/17.png',
            'lib/images/18.png',
            'lib/images/19.png',
            'lib/images/20.png',
            'lib/images/21.png',
            'lib/images/22.png',
            'lib/images/23.png',
            'lib/images/24.png',
            'lib/images/25.png',
            'lib/images/26.png',
            'lib/images/27.png',
            'lib/images/28.png',
            'lib/images/29.png',
            'lib/images/30.png',
            'lib/images/31.png',
            'lib/images/32.png',
            'lib/images/33.png',
            'lib/images/34.png',
            'lib/images/35.png',
            'lib/images/36.png',
            'lib/images/37.png',
            'lib/images/38.png',
            'lib/images/39.png',
            'lib/images/40.png',
          ]);
        }),
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottomIndex, 
            onTap: _handleBottomIndexChange,
          ),
        ), 
    );
  }
}
