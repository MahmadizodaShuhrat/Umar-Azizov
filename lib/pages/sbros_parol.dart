import 'package:flutter/material.dart';
import 'package:duxtur/main2.dart';
import 'package:duxtur/pages/noviy_parol_page.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Page3 extends StatefulWidget {
  Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var emailContoller = TextEditingController(text: '');
  var passwordContoller = TextEditingController(text: '');
  var secureStorage = FlutterSecureStorage();

  String emailText = 'eve.holt@reqres.in';
  String passwordText = 'cityslicka';
  String gandaToken = '';

  Future logInMethod(String email, String password) async {
    var response = await http.post(Uri.parse("https://reqres.in/api/login"),
        headers: <String, String>{
          'Content-Type': "application/json",
        },
        body: jsonEncode({
          "email": email = 'eve.holt@reqres.in',
          "password": password = 'cityslicka',
        }));

    if (response.statusCode == 200) {
      var tok = json.decode(response.body)['token'];

      setState(() {
        gandaToken = tok;
      });

      await secureStorage.write(key: 'token', value: tok);
      print(tok);

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Mymoney()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Image.asset(
                    'images/Toolbar.png',
                    height: 80,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "images/image 134.png",
                    height: 180,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Color(0xff737373),
                    indicatorColor: Colors.blue,
                    indicatorWeight: 1,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(
                        text: 'Телефон',
                      ),
                      Tab(text: 'Email'),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 370,
                    child: TabBarView(
                      children: [
                        Column(
                          children: [
                            TextField(
                              controller: emailContoller,
                              decoration: const InputDecoration(
                                labelText: 'Введите номер',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: passwordContoller,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Пароль',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              NewparolPage()));
                                },
                                child: const Text(
                                  'Забыли пароль?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.blue),
                                )),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide.none),
                              onPressed: () {
                                logInMethod(emailContoller.text,
                                    passwordContoller.text);
                                setState(() {
                                  emailText = emailContoller.text;
                                  passwordText = passwordContoller.text;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 378,
                                height: 62,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'Войти',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Text(
                              "${gandaToken}",
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Нет аккаунта?',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Зарегистрироваться',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.blue),
                                    ))
                              ],
                            )
                          ],
                        ),
                        Center(child: Text('email')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
