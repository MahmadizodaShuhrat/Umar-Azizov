import 'package:duxtur/pages/gridview.dart';
import 'package:duxtur/pages/online_consultation_page.dart';
import 'package:duxtur/pages/page2_in_grid.dart';
import 'package:duxtur/pages/papkai_hokim.dart';
import 'package:duxtur/pages/profil_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mymoney extends StatefulWidget {
  int myindex =0;
  Mymoney({super.key ,this.myindex=0});

  @override
  State<Mymoney> createState() => _MyAppState();
}

class _MyAppState extends State<Mymoney> {
  List<Widget> sahifaho = [
    Myhomepageingrid(),
    Post(),
    NamePageingrid(),
    OnlineConsultationPage(),
    ProfilPage(),
  ];
   

   @override
   void initState(){
    super.initState;
     _selectedIndex=widget.myindex;
   }
  

  int _selectedIndex = 0;
  void changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        body: sahifaho[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: changeIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Главная"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_sharp), label: "Подписки"),
            BottomNavigationBarItem(
                icon: Icon(Icons.layers_outlined), label: "Курсы"),
            BottomNavigationBarItem(
                icon: Icon(Icons.forum_outlined), label: "Консультация"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профиль"),
          ],
        ),
      );
    
  }
}
