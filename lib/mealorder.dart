import 'package:flutter/material.dart';

class MealOrder extends StatelessWidget {
  const MealOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        onPressed: (() {
                          Navigator.pushNamed(context, '/MealDetail');
                        }),
                        tooltip: "Back",
                        icon: const Icon(Icons.arrow_back)),
                    IconButton(
                        onPressed: (() {}),
                        tooltip: "Favorite",
                        icon: const Icon(Icons.favorite))
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 120,
                backgroundImage: NetworkImage(
                    "https://static.onecms.io/wp-content/uploads/sites/44/2019/08/13/6930282.jpg"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Indian Special Thali",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 18),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.shutterstock.com/image-vector/indian-food-logo-icon-templatespoonknife-260nw-1235539489.jpg"),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Indian",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                    )
                  ]),
              const SizedBox(height: 22),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.alarm),
                    SizedBox(width: 8),
                    Text("15 min"),
                    SizedBox(width: 70),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 227, 111, 10),
                    ),
                    SizedBox(width: 8),
                    Text("4.8"),
                    Text("(2.2k reviews)"),
                    Icon(Icons.arrow_right_sharp)
                  ]),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 140,
                    width: 120,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50))),
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(height: 15),
                          const Text("Small 8*"),
                          const SizedBox(height: 15),
                          const Text(
                            '\$4.9',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 245, 95, 36),
                          width: 1,
                        ),
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 140,
                    width: 120,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: const Color.fromARGB(255, 245, 95, 36),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50))),
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(height: 15),
                          const Text("Medium 10*"),
                          const SizedBox(height: 15),
                          const Text(
                            '\$6.9',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 140,
                    width: 120,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50))),
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(height: 15),
                          const Text("Large 8*"),
                          const SizedBox(height: 15),
                          const Text(
                            '\$12.50',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ]),
                  )
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: const <Widget>[
                        Text(
                          "Total : ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          '\$6.9',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          child: const Text(
                            "+",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        const SizedBox(width: 8),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          child: const Text("-",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 245, 95, 36),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                height: 50,
                width: 380,
                child: const Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              )
            ],
          )),
    );
  }
}
