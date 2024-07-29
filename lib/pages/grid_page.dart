import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridPage extends StatelessWidget {
  final String? surat;
  final String? text1;
  const GridPage({super.key, required this.surat, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 158,
      height: 194,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 1, color: Colors.black)],
      ),
      child: Column(
        children: [
          Container(
            width: 180,
            height: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(surat!),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8)),
          ),
          SizedBox(height: 3,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                Row(
                  children: [
                    Icon(
                      Icons.play_circle,
                      size: 18,
                    ),
                    Text(' 20 уроков ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.grey),),
                    Icon(
                      Icons.access_time,
                      color: Colors.green,
                      size: 18,
                    ),
                    Text('  16 ч',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.grey),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
