import 'package:duxtur/pages/uvedomlenie.dart';

import 'chorkunja.dart';
import 'consultatio_page.dart';
import 'grid_page.dart';
import 'gridview.dart';
import 'my_course_component.dart';
import 'package:flutter/material.dart';

class Myhomepageingrid extends StatefulWidget {
  Myhomepageingrid({super.key});

  @override
  State<Myhomepageingrid> createState() => _MyappState();
}

class _MyappState extends State<Myhomepageingrid> {

  List<String> text11 = [
    "Анатомия",
    "Шиши нав",
    "Шиш",
    "Сутунмухра",
  ];
  List<String> text12 = [
    "Шиши нав",
    "Анатомия",
    "Сутунмухра",
    "Шиш",
    'Дарди шиш',
  ];
  List<String> suratho = [
    'images/dila.jpeg',
    'images/sutunmuhrai grid.png',
    'images/dila.jpeg',
    'images/sutunmuhrai grid.png',
  ];
  List<String> suratho1 = [
    'images/skrinshots.jpeg',
    'images/1.png',
    'images/sutunmuhrai grid.png',
    'images/skrinshots.jpeg',
    'images/1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
       
          toolbarTextStyle: const TextStyle(color: Colors.blue),
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                const SizedBox(
                  width: 90,
                ),
                const Text(
                  'Umar Azizov',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 100,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Uvedomlenie()));
                    },
                    icon: const Icon(Icons.notifications_outlined))
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/surati glavnii grid.png",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Мои курсы",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConsultationPage()));
                      },
                      child: const Text(
                        "Смотреть все >",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  height: 130,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: text11.length,
                      itemBuilder: (context, index) {
                        return MyCoursesComponent(
                          text01: text11[index],
                          surat: suratho[index],
                        );
                      })),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Популярное",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  height: 180,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Chorkunja(
                          text02: text12[index],
                          surat: suratho1[index],
                        );
                      })),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Все курсы",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NamePageingrid()));
                        },
                        child: const Text("Смотреть все >",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.blue)))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 320,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GridPage(
                        surat: suratho1[index],
                        text1: text11[index],
                      );
                    }),
              ),
            ],
          ),
        )));
  }
}
