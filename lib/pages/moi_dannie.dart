import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'dart:convert' as convert;
// import 'dart:convert';

// import 'package:http/http.dart' as http;

class MoiDannie extends StatefulWidget {
  const MoiDannie({super.key});

  @override
  State<MoiDannie> createState() => _MoiDannieState();
}

class _MoiDannieState extends State<MoiDannie> {
  // var javob = {};
  // var digarish = {};

  // @override
  // void initState() {
  //   super.initState();
  //   getUserData();
  // }

  // Future getUserData() async {
  //   var resp = await http.get(Uri.parse("https://reqres.in/api/users/2"));

  //   if (resp.statusCode == 200) {
  //     var rez = json.decode(resp.body);
  //     setState(() {
  //       javob = rez['data'];
  //       digarish = rez['support'];
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Мои данные",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 22, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/UmarAzizov.png")),
                        shape: BoxShape.circle,
                        color: Color(0xffCBD5E1)),
                    alignment: Alignment.center,
                  ),
                  Positioned(
                    top: 72,
                    left: 72,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Icon(
                        Icons.mode_edit_outline_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Имя"),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Фамилия"),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Введите номер"),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Email"),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Город",
                        suffixIcon: Icon(
                          Icons.event,
                          color: Color(0xff737373),
                        )),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "дд.мм.гггг"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: 328,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xffE2E8F0),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text("Сохранить"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
