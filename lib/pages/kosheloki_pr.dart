import 'karta_page.dart';
import 'package:flutter/material.dart';

class KoshelokiPr extends StatelessWidget {
  const KoshelokiPr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Кошелек"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KartaPage()));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 98,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF3F4F6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Text("Баланс"),
                          Text("950 c",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28))
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 124,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff1780C2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        "+ Пополнить",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      "История",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE0F2FE),
                      ),
                      child: const Icon(
                        Icons.layers_outlined,
                        size: 20,
                        color: Colors.blue,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "   Подписка 1",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text(
                              "   Оплата через кошелек",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffA3A3A3)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "800 с",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text("13.05.2024",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xffA3A3A3))),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE0F2FE),
                      ),
                      child: const Icon(Icons.forum_outlined,
                          color: Colors.blue, size: 20),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "   Консультация",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text(
                              "   Оплата через кошелек",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffA3A3A3)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "60 с",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text("13.05.2024",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xffA3A3A3))),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE0F2FE),
                      ),
                      child: const Icon(
                        Icons.layers_outlined,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "   Подписка 2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text(
                              "   Оплата через Корти милли",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffA3A3A3)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "1500 с",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text("13.05.2024",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xffA3A3A3))),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE0F2FE),
                      ),
                      child: const Icon(
                        Icons.money_rounded,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "   Пополнение кошелька",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text(
                              "   Наличными/кошелек",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffA3A3A3)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "2000 с",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text("13.05.2024",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xffA3A3A3))),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
