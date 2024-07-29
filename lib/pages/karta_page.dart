import 'package:flutter/material.dart';

class KartaPage extends StatefulWidget {
  const KartaPage({super.key});

  @override
  State<KartaPage> createState() => _KartaPageState();
}

class _KartaPageState extends State<KartaPage> {
  bool ikonka = false;
  bool ikonka1 = false;
  bool ikonka2 = false;
  bool ikonka3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Оплата"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 130,
                color: Color(0xffE0F2FE),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Консультация",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "60 сом",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "3 консультации с врачом",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff404040)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                      ],
                    ),
                    Image.asset(
                      "images/kavs.png",
                      width: 100,
                      height: 118,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Выберите способ оплаты",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff525252)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.only(
                  left: 10,
                ),
                width: double.infinity,
                height: 64,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Color(0xff475569),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Кошелек",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "950 c",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                ikonka = !ikonka;
                              });
                            },
                            icon: ikonka
                                ? Icon(
                                    Icons.radio_button_checked,
                                    color: Colors.blue,
                                  )
                                : Icon(Icons.radio_button_off)),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 64,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "images/nishon.png",
                            width: 36,
                            height: 36,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 7)),
                              Text(
                                "корти",
                                style: TextStyle(
                                    color: Colors.lightGreen[600],
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "милли",
                                style: TextStyle(
                                    color: Colors.lightGreen[600],
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {});
                        },
                        icon: Icon(Icons.radio_button_off_rounded),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 64,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/alifbank.png",
                        width: 52,
                        height: 36,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.radio_button_off_rounded),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 64,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "images/mirbank.png",
                        width: 46,
                        height: 36,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.radio_button_off_rounded),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 420,
                height: 44,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/ikonka.png",
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Этот способ оплаты пока недоступен!",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide.none
                ),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 32,
                                height: 4,
                                color: Color(0xffd4d4d4),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Подтверждение",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(Icons.close_outlined))
                                ],
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 64,
                                height: 64,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF0F9FF),
                                ),
                                child: Icon(Icons.layers_outlined),
                              ),
                              Text(
                                'Подписка 1',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue),
                              ),
                              Text(
                                '850 сом/мес',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w700),
                              ),
                              Container(
                                width: 328,
                                height: 152,
                                decoration: BoxDecoration(
                                  color: Color(0xffF3F4F6),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Подписка на курсы:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Color(0xff525252)),
                                        ),
                                        Text(
                                          "30 дней",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Способ оплаты:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: Color(0xff525252))),
                                        Text(
                                          "Кошелек",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Скидка:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: Color(0xff525252))),
                                        Text(
                                          "200 сомони",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Итого:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                color: Color(0xff525252))),
                                        Text(
                                          "650 сомони",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 328,
                                height: 52,
                                decoration: BoxDecoration(
                                    color: Color(0xff1780C2),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Text(
                                  "Подтвердить",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 328, 
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue,
                  ),
                  child: const Text(
                    "Продолжить",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
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
