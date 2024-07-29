import 'noviy_parol_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Сброс пароля"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/image 131.png"),
            SizedBox(height: 30,),
           const Text(
                "Введите ваш email, на который будет"),
            Text("отправлен код для сброса пароля"),
            SizedBox(height: 30,),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
 GestureDetector(
                onTap: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>NewparolPage())
                  );
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
    );
  }
}
