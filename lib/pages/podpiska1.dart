import 'package:duxtur/pages/karta_page.dart';
import 'package:flutter/material.dart';

class Rat extends StatelessWidget {
  final Color a;
  final String b;
  final String c;
  final String d;
  final String e;

  const Rat({
    super.key,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.e,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 30),
            padding: EdgeInsets.only(left: 20),
            width: 428,
            height: 180,
            decoration: BoxDecoration(
              color: a,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          b,
                          style:
                              TextStyle(fontSize: 20, color: Color(0xffEA580C)),
                        ),
                      const  SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Text(
                              c,
                              style:const TextStyle(
                                  fontSize: 24,
                                  color: Color(0xff262626),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      const  SizedBox(
                          height: 8,
                        ),
                        Text(
                          d,
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff404040)),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 100,
                      right: 0,
                      child: Container(
                        width: 100,
                        height: 118,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e), fit: BoxFit.cover),
                        ),
                      ),
                    )
                  ],
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>KartaPage()));
                  },
                child: 
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 296,
                  height: 40,
                  decoration:const BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                  child:const Center(
                      child: Text(
                    "Выбрать",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff1780C2),
                        fontWeight: FontWeight.w700),
                  )),
                )),
              ],
            ),
          ),
          Positioned(
            right: -90,
            child: Container(
              width: 200,
              height: 75,
              margin: EdgeInsets.only(right: 50),
              child:const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "  880 сом/мес",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff737373),
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
