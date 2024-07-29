import 'noviy_parol_page.dart';
import 'online_consultation_page.dart';
import 'sbros_parol.dart';
import 'package:flutter/material.dart';

class RegisteremailPage extends StatefulWidget {
  const RegisteremailPage({super.key});

  @override
  State<RegisteremailPage> createState() => _RegisteremailPageState();
}

class _RegisteremailPageState extends State<RegisteremailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text(
          "UMAR AZIZOV",
          style: TextStyle(
              color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset("images/image 134.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Page3()));
                    },
                    child: const Text(
                      "Телефон",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                const   Text("Email",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 20)),
                ],
              ),
            const  SizedBox(
                height: 30,
              ),
            const  TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
            const  SizedBox(
                height: 30,
              ),
            const  TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Пароль",
                ),
              ),
            const  SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewparolPage()));
                  },
                  child:const Text(
                    "Забыли пароль?",
                    style: TextStyle(color: Colors.blue),
                  )),
            const  SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OnlineConsultationPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  alignment: Alignment.center,
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:const Text(
                    "Войти",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
