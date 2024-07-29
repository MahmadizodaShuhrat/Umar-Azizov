import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Chorkunja extends StatefulWidget {
  final String text02;
  final String surat;
  const Chorkunja({super.key, required this.text02,required this.surat});

  @override
  State<Chorkunja> createState() => _ChorkunjaState();
}

class _ChorkunjaState extends State<Chorkunja> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 146,
      height: 164,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8) 
            ),
        color: Colors.white,
        boxShadow:  [
          BoxShadow(
            color: Color(0xFF111827),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Container(
                width: 146,
                height: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image:  DecorationImage(
                        image: AssetImage(widget.surat), fit: BoxFit.cover)),
              ),
          
          Padding(
            padding: EdgeInsets.all(8),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
               widget.text02,
                style: TextStyle(fontWeight: FontWeight.bold),
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
            ],
          ),
       ) ],
      ),
    );
  }
}
