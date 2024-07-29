import 'package:flutter/material.dart';

class Uvedomlenie extends StatefulWidget {
  const Uvedomlenie({super.key});

  @override
  State<Uvedomlenie> createState() => _UvedomlenieState();
}

class _UvedomlenieState extends State<Uvedomlenie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,

        title: Text('Уведомления',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
      ),
      body: Column(
      
        children: [
          SizedBox(height: 150,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/image 119.png',height: 180,),
            ],
          ),
SizedBox(height: 10,),
Text('Пока нет уведомлений',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
Text('Здесь будут приходить новости или',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff737373)),),
Text('оповещения по курсам или другое',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff737373)),),
        ],
      ),
    );
  }
}