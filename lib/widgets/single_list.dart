import 'package:flutter/material.dart';

class SingleList extends StatelessWidget {
  const SingleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: Card(
        color: const Color.fromARGB(255, 237, 236, 236),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mar Bazar', textAlign: TextAlign.left),
                Text(
                  '10/02/2023',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12.0),
                ),
              ]),
        ),
      ),
    );
  }
}
