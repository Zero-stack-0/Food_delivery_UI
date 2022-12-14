import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 70, left: 15, right: 15, bottom: 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
              ),
              const Text(
                "Indian Special Thali",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(width: 10)
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            "Today's Special Dish",
            style: TextStyle(
                color: Color.fromARGB(255, 129, 126, 126),
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
          const SizedBox(height: 40),
          const CircleAvatar(
            radius: 225,
            backgroundImage: NetworkImage(
                "https://static.onecms.io/wp-content/uploads/sites/44/2019/08/13/6930282.jpg"),
          ),
          const SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
              Widget>[
            Row(
              children: const <Widget>[
                Icon(
                  Icons.alarm,
                  color: Color.fromARGB(255, 245, 95, 36),
                  size: 30,
                ),
                SizedBox(width: 10),
                Text("30 Min",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.heat_pump,
                  color: Color.fromARGB(255, 245, 95, 36),
                  size: 30,
                ),
                SizedBox(width: 10),
                Text("20 Calories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.reviews,
                  color: Color.fromARGB(255, 245, 95, 36),
                  size: 30,
                ),
                SizedBox(width: 10),
                Text("4.5",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
              ],
            )
          ]),
          const SizedBox(height: 20),
          const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                '\$12.50',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 95, 36),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/MealOrder');
                    },
                    icon: const Icon(Icons.shopping_bag),
                    color: Colors.white,
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
