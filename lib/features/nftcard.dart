import 'package:flutter/material.dart';

class NftCard extends StatelessWidget {
  final List<String> imagePaths;

  const NftCard({Key? key, required this.imagePaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      elevation: 3.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset(
              imagePaths.first,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const ListTile(
          contentPadding: EdgeInsets.only(left: 5.0),
          tileColor: Color.fromRGBO(106, 150, 158, 0.856),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
          leading: CircleAvatar(
            backgroundColor: Colors.black,
            child: Text(
              "F",
              style: TextStyle(color: Colors.white),
            ),
          ),
          title: Text("Shiba Common",style: TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis),
        ),  
      ],
      ),
    );
  }
}
