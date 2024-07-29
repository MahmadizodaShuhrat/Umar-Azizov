import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCoursesComponent extends StatefulWidget {
  final String surat;
  final String text01;
  const MyCoursesComponent({super.key, required this.surat, required this.text01});

  @override
  State<MyCoursesComponent> createState() => _MyCoursesComponentState();
}
class _MyCoursesComponentState extends State<MyCoursesComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 90,
      margin:  const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      padding:  const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF111827),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                widget.surat,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 8,
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                widget.text01,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Row(
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
                  Row(
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
  }
}
