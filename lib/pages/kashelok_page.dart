import 'kosheloki_pr.dart';
import 'package:flutter/material.dart';

class KashelokPage extends StatelessWidget {
  const KashelokPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        title: Text("Кошелек"),
      ),
      body: 
      
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
            
              width: 400,
              height: 98,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffF3F4F6)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                const Padding(
                   padding:  EdgeInsets.only(top: 20),
                   child:  Column(
                                   
                      children: [Text(
                        "Баланс"
                      ),
                      Text("0 c",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28))
                      ],
                   
                    ),
                 ),
                 GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>KoshelokiPr()));
                  },
                 child: 
                  Container(
                    alignment: Alignment.center,
                    width: 124,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff1780C2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text("+ Пополнить",style: TextStyle(color: Colors.white),),
                  )
                 ),
                ],
              ),
            ),
          ),

        const  Padding(
            padding:  EdgeInsets.only(left: 90),
            child:  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text("История",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      ],
                ),
          ),
           
              Column(
              
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("images/money.png",width: 210,height: 150,),
                      SizedBox(height: 25,),
                    const  Text("У вас пока нет платежей",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    SizedBox(height: 25,),
                      Container(
                        alignment: Alignment.center,
                        width: 328,
                        height: 48,
                        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color(0xff1780C2),
                        ),
                        child:const Text("Офрмить подписку",style: TextStyle(color: Colors.white),),
                      ),
                    ],
              )
        ],
      ),
    );
  }
}