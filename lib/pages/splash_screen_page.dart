import 'package:duxtur/main2.dart';
import 'package:flutter/material.dart';



class splashscreenPage extends StatefulWidget {
  const splashscreenPage({super.key});

  @override
  State<splashscreenPage> createState() => _MyappState();
}

class _MyappState extends State<splashscreenPage> {
 @override
  void initState() {
    super.initState();
    goToNextPage();
  }

  goToNextPage() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Mymoney(),),(route)=>false
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: Color(0xff1780C2),
        body: const  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "UMAR",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "AZIZOV",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
  }
  
  onlineconsulationPage() {}
}
