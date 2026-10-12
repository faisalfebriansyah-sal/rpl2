import 'package:flutter/material.dart';

class KartuProfile extends StatelessWidget {
  const KartuProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        height: 72,
        padding:EdgeInsets.all(12),
        margin:EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 241, 241, 241),
          borderRadius: BorderRadius.circular(8),
          boxShadow:[BoxShadow(color: Colors.black, blurRadius: 6)],
        ),
        child: Row(children: [
          SizedBox(
            width: 60,
            height: 60,
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/images/tengkorak.png'),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text("Faisal"),
                SizedBox(height: 4),
                Text(" XII RPL 2"),
              ],
            )
          )
        ],)
      )
    );
  }
}