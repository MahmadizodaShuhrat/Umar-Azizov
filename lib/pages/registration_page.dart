import 'noviy_parol_page.dart';
import 'online_consultation_page.dart';
import 'package:flutter/material.dart';

class RegistrationPage2 extends StatefulWidget {
  const RegistrationPage2({super.key});

  @override
  State<RegistrationPage2> createState() => _RegistrationPage2State();
}

class _RegistrationPage2State extends State<RegistrationPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "UMAR AZIZOV",
          style: TextStyle(
              fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset("images/image 134.png"),
             const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Телефон",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Text("Email"),
                ],
              ),
             const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Ваше имя"),
              ),
             const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Введите номер"),
              ),
            const  SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Пароль",
                  suffixIcon: Icon(Icons.visibility_off_outlined),
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
                  child: const Text(
                    "Забыли пароль?",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  )),
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
                  child: const Text(
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
