import 'sbros_parol.dart';
import 'package:flutter/material.dart';

class NewparolPage extends StatefulWidget {
  const NewparolPage({super.key});

  @override
  State<NewparolPage> createState() => _NewparolPageState();
}

class _NewparolPageState extends State<NewparolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Сброс пароля"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/image 122.png"),
             const  SizedBox(
                height: 30,
              ),
              const Text("Введите код отправленный на почту"),
              Text("example@mail.ru"),
             const  SizedBox(
                height: 30,
              ),
             const  Text(
                "Отправить новый код",
                style: TextStyle(color: Colors.blue),
              ),
            const   SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Введите код"),
              ),
           const  SizedBox(
                height: 40,
              ),
            const Text(
                "Придумайте новый пароль",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
             const  SizedBox(
                height: 30,
              ),
             const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Новый пароль",
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                ),
              ),
              const  SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Повторите пароль",
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                ),
              ),
            const  SizedBox(height: 30,),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>Page3()),
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
