import 'package:flutter/material.dart';
// import 'dart:convert' as convert;
// import 'dart:convert';

// import 'package:http/http.dart' as http;

class ConsultationPage extends StatefulWidget {
   
  ConsultationPage({super.key,});

  @override
  State<ConsultationPage> createState() => _ConsultationPageState();
}

class _ConsultationPageState extends State<ConsultationPage> {
//   List users = [];
// @override
// void initState(){
//   super.initState();
//   getUserData();
//   }
// Future getUserData()async {
//   var resp = await http.get(Uri.parse("https://reqres.in/api/users?page=1"));
// if (resp.statusCode == 200) {
//   var rez = json.decode(resp.body);
//   setState(() {
//     users = rez['data'];
//   });
// }

// }

List<String> textho = [
  'Анатомия',
  'Дарди шишро хис кунед',
  'Сутунмухраи качала',
  'Шиши нав',
  'Шиш'
];
List<String> suratho = [
  'images/dila.jpeg',
  'images/skrinshots.jpeg',
  'images/sutunmuhrai grid.png',
  'images/dila.jpeg',
  'images/skrinshots.jpeg',
  'images/sutunmuhrai grid.png',
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Мои курсы"),
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              width: 328,
              height: 122,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF111827),
                    blurRadius: 1,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage(suratho[index])),
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textho[index],
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.play_circle_outline,
                                color: Color(0xff1780C2),
                                size: 20,
                              ),
                              Text(" 20 уроков  ",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff737373))),
                              Icon(
                                Icons.access_time,
                                color: Color(0xffF97316),
                                size: 20,
                              ),
                              Text(
                                "16 ч",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff737373)),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                " Подписка:",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "  20 дней",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5)
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 42,
                          height: 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Пройдено: 6/20",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff262626)),
                      ),
                      Text(
                        "32%",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}
