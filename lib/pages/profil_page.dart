// import 'dart:convert';

import 'package:duxtur/pages/consultatio_page.dart';
import 'package:duxtur/pages/uvedomlenie.dart';
import 'package:flutter/services.dart';

import 'kosheloki_pr.dart';
import 'moi_dannie.dart';
import 'package:flutter/material.dart';
// import 'dart:convert' as convert;
// import 'dart:convert';

// import 'package:http/http.dart' as http;

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
// var javob ={};
// var digari = {};
// @override
// void initState(){
//   super.initState();
//   getUserData();
// }
// Future getUserData() async {
//   var resp = await http.get(Uri.parse("https://reqres.in/api/users/9"));
//   if (resp.statusCode == 200) {
//     var rez = json.decode(resp.body);
//     setState(() {
//       javob = rez['data'];
//       digari = rez['support'];
//     });
//   }
// }
  bool ikonka = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xfff3f4f6),
        title: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Container(
            width: 600,
            height: 52,
            color: Color(0xffF3F4F6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Профиль",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Uvedomlenie()));
                  },
                  child: Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Icon(Icons.notifications_none_rounded)),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 104,
                  color: Color(0xffF3F4F6),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/UmarAzizov.png')),
                            shape: BoxShape.circle,
                            color: Color(0xffCBD5E1),
                          ),
                          child: Text(""),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Садриддин Айни"),
                            Text("sadriddinayni@gmail.com"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConsultationPage()));
                        },
                        child: Container(
                          width: 188,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xffF3F4F6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 16),
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xff1780C2),
                                  ),
                                  child: const Icon(
                                    Icons.layers_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  "Мои курсы",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KoshelokiPr()));
                        },
                        child: Container(
                          width: 188,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xffF3F4F6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 16),
                                child: Container(
                                  width: 84,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xff1780C2),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.account_balance_wallet_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      Text(
                                        "   950 c",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  "Кошелек",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MoiDannie()));
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Color(0xffF3F4F6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.person_outline,
                                  color: Colors.blue,
                                  size: 32,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Мои данные',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Настройки',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Color(0xffF3F4F6),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.lock_outline,
                                  color: Colors.blue,
                                  size: 32,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Сменить пароль',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Color(0xffF3F4F6),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              ikonka = !ikonka;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.notifications_none,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Уведомления',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        ikonka = !ikonka;
                                      });
                                    },
                                    icon: ikonka
                                        ? Icon(
                                            Icons.toggle_off_outlined,
                                            color: Colors.black,
                                            size: 40,
                                          )
                                        : Icon(
                                            Icons.toggle_on,
                                            color: Colors.blue,
                                            size: 40,
                                          )),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Column(
                                      children: [
                                        Text('вы точно хотите выйти?',style: TextStyle(fontSize: 20),),
                                        SizedBox(height: 30,),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                SystemNavigator.pop();
                                              },
                                              child: Container(
                                                  alignment: Alignment.center,
                                                                                      
                                                width: 100,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                          blurRadius: 1,
                                                          color: Colors.black),
                                                          
                                                    ],
                                                    
                                                ),
                                                  child: Text('да',style: TextStyle(fontSize: 20),),
                                              ),
                                            ),
                                            SizedBox(width: 30,),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                width: 100,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                          blurRadius: 1,
                                                          color: Colors.black),
                                                          
                                                    ],
                                                    
                                                ),
                                                  child: Text('нет',style: TextStyle(fontSize: 20),),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xffF3F4F6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.exit_to_app,
                                    color: Colors.green,
                                    size: 32,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Выйти',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
