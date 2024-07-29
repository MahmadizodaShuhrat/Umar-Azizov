import 'grid_page.dart';
import 'package:flutter/material.dart';
class NamePageingrid extends StatefulWidget {
  NamePageingrid({super.key});
  @override
  State<NamePageingrid> createState() => _NamePageingridState();
}
class _NamePageingridState extends State<NamePageingrid> {
   List<String> suratho1 = [
    'images/skrinshots.jpeg',
    'images/1.png',
    'images/sutunmuhrai grid.png',
    'images/skrinshots.jpeg',
    'images/skrinshots.jpeg',
    'images/1.png',
  ];
  List<String> text11 = [
    "Анатомия",
    "Шиши нав",
    "Шиш",
    "Сутунмухра",
    "Анатомия",
    "Шиши нав",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Курсы"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: Container(
            width: double.infinity,
            // height: 600,
            child: GridView.builder(
                physics: RangeMaintainingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GridPage(
                    surat: suratho1[index],
                    text1: text11[index],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
