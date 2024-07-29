import 'package:duxtur/main2.dart';
import 'package:flutter/material.dart';

class OnlineConsultationPage extends StatefulWidget {
  const OnlineConsultationPage({super.key});

  @override
  State<OnlineConsultationPage> createState() => _MyAppState();
}

class _MyAppState extends State<OnlineConsultationPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          // backgroundColor: Colors.white,
      backgroundColor: Color(0xffFFFFFF),

          title: const Text(
            "Онлайн-консультатсия",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 21.0),
              child: Icon(
                Icons.notifications_on_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 60),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        alignment: Alignment.topCenter,
                        width: 600,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Color(0xff1F2937),
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "images/Frame 1261155011 (1).png",
                        ),
                      ),
                      Positioned(
                        bottom: -60,
                        left: MediaQuery.of(context).size.width / 2 - 80,
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 8,
                            ),
                            image: const DecorationImage(
                              image: AssetImage(
                                "images/UmarAzizov.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Column(
                  children: [
                    Text(
                      "Umar Azizov",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text("Руководитель клиники EuroMed в Душанбе",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width * 2,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F5),
                  ),
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Количество"),
                        Text(
                          "консультаций:3",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 110,
                ),

                Container(
                  width: double.infinity,
                  height: 72,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        color: Colors.black
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffFFFFFF),
                  ),
                  child:   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Padding(
                        padding: EdgeInsets.only(left: 20,top: 5,bottom: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Цена",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('60 сомони',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700
                              ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Mymoney(myindex: 1,)), (route)=>false);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff1780C2),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text('Купить',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
