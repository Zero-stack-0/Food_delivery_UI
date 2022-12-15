import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:
              EdgeInsets.only(top: 5.h, left: 3.w, right: 3.w, bottom: 1.h),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
              Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back, size: 6.w),
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                ),
                Text(
                  "Indian Special Thali",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
                const SizedBox(width: 10)
              ],
            ),
            Container(height: 0.5.h),
            const Text(
              "Today's Special Dish",
              style: TextStyle(
                  color: Color.fromARGB(255, 129, 126, 126),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            Container(height: 4.h),
            CircleAvatar(
              radius: 30.w,
              backgroundImage: const NetworkImage(
                  "https://static.onecms.io/wp-content/uploads/sites/44/2019/08/13/6930282.jpg"),
            ),
            Container(
              height: 5.h,
            ),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                ],
              )
            ]),
            Container(
              height: 5.h,
            ),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                style: TextStyle(fontSize: 10.sp)),
            Container(
              height: 5.h,
            ),
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
      ),
    );
  }
}
