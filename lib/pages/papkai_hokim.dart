import 'package:duxtur/pages/podpiska1.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  List<Color> rang = [
    Color(0xffE0F2FE),
    Color(0xffF3E8FF),
    Color(0xffFFEDD5),
  ];

  List<String> rang3 = [
    "images/Pattern.png",
    "images/Pattern.png",
    "images/Pattern.png",
    
  ];

  List<String> text1 = [
    "Консультация",
    "Подписка 1",
    "Подписка 2",
  ];

  List<String> text2 = [
    "60 сом",
    "850 сом/мес",
    "800 сом/мес",
  ];

  List<String> text3 = [
    "3 консультации с врачом  ",
    "Просмотр курсов                 ",
    "Доступ к курсу со скидкой",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Подписки",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 700,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: text1.length,
            itemBuilder: (context, index) {
              return Rat(
                a: rang[index],
                b: text1[index],
                c: text2[index],
                d: text3[index],
                e: rang3[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
