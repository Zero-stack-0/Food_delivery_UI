import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 80, left: 22, right: 22, bottom: 10),
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              CircleAvatar(
                radius: 38,
                backgroundImage: NetworkImage(
                    "https://cdnb.artstation.com/p/assets/images/images/034/457/411/large/shin-min-jeong-.jpg?1612345193"),
              ),
              Icon(Icons.menu, size: 40)
            ],
          ),
          const SizedBox(height: 30),
          const Text(
            "Let's Find",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Text("food near you",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 207, 203, 203),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            height: 52,
            width: 380,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 14, right: 14),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Icon(Icons.search, size: 28),
                    Icon(Icons.functions_outlined, size: 28)
                  ]),
            ),
          ),
          const SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 237, 233, 233),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0.1,
                        color: Color.fromARGB(255, 86, 82, 82),
                      )
                    ],
                  ),
                  height: 80,
                  width: 80,
                  child: const Text(
                    "All",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 14),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 245, 95, 36),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0.1,
                        color: Color.fromARGB(255, 86, 82, 82),
                      )
                    ],
                  ),
                  height: 80,
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Icon(
                        Icons.catching_pokemon,
                        color: Colors.white,
                      ),
                      Text(
                        "Meals items",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 14),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 237, 233, 233),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0.1,
                        color: Color.fromARGB(255, 86, 82, 82),
                      )
                    ],
                  ),
                  height: 80,
                  width: 80,
                  child: const Text(
                    "Dessert",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 14),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 237, 233, 233),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0.1,
                        color: Color.fromARGB(255, 86, 82, 82),
                      )
                    ],
                  ),
                  height: 80,
                  width: 80,
                  child: const Text(
                    "Veg",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  "Popular Items",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "View More",
                  style: TextStyle(
                      color: Color.fromARGB(255, 245, 95, 36),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ]),
          const SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/MealDetail");
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(1, 3),
                        )
                      ]),
                  width: 200,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const <Widget>[
                      CircleAvatar(
                        radius: 110,
                        backgroundImage: NetworkImage(
                            "https://static.onecms.io/wp-content/uploads/sites/44/2019/08/13/6930282.jpg"),
                      ),
                      Text("Indian Thali",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text("Special"),
                      Text('\$12.50',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16))
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(3, 3),
                      )
                    ]),
                width: 200,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    CircleAvatar(
                      radius: 110,
                      backgroundImage: NetworkImage(
                          "https://static.onecms.io/wp-content/uploads/sites/44/2019/08/13/6930282.jpg"),
                    ),
                    Text("Indian Thali",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text("Special"),
                    Text('\$12.50',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16))
                  ],
                ),
              )
            ]),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.home,
                    size: 32,
                  ),
                  color: const Color.fromARGB(255, 245, 95, 36)),
              const Icon(
                Icons.favorite,
                color: Color.fromARGB(77, 66, 64, 64),
                size: 32,
              ),
              Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 245, 95, 36),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const Icon(
                Icons.alarm,
                color: Color.fromARGB(77, 66, 64, 64),
                size: 32,
              ),
              const Icon(
                Icons.shopping_bag,
                color: Color.fromARGB(77, 66, 64, 64),
                size: 32,
              ),
            ],
          )
        ])),
      ),
    );
  }
}
