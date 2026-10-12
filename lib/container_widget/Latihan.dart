import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Kotak biru
          Container(
            width: 500,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "BACELONA",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),

          // Row di LUAR kotak biru
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 146, 146, 146),
                child: Column( mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Container(
                      width: 150,
                      height: 150,
                      color: const Color.fromARGB(255, 255, 0, 0),
                    )

                ],)
              ),
              Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 146, 146, 146),
                child: Column( mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Container(
                      width: 150,
                      height: 150,
                      color: const Color.fromARGB(255, 0, 51, 255),
                    )

                ],)
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 500,
                height: 150,
                color: const Color.fromARGB(255, 146, 146, 146),
                child: Column( mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Container(
                      width: 450,
                      height: 100,
                      color: const Color.fromARGB(255, 255, 0, 0),
                      child: Text(
                        "Visca Barca",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    )

                ],)
              ),
              SizedBox(height: 20),
              Container(
                width: 500,
                height: 150,
                color: const Color.fromARGB(255, 146, 146, 146),
                child: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [ 
                    Container(
                      width: 450,
                      height: 100,
                      color: const Color.fromARGB(255, 0, 51, 255),
                      child: Text(
                        "Visca Catalunya",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    )

                ],)
              ),
            ],
          ),
        ],
      ),
    );
  }
}