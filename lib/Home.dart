import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isButtonClicker = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 6.h, left: 2.w, right: 2.w),
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
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
                Container(height: 2.h),
                const Text(
                  "Let's Find",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const Text("food near you",
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                Container(height: 3.h),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 207, 203, 203),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 6.h,
                  width: 380.w,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 14, right: 14),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Icon(Icons.search, size: 28),
                          Icon(Icons.functions_outlined, size: 28)
                        ]),
                  ),
                ),
                Container(height: 3.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          isButtonClicker = true;
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isButtonClicker
                                ? const Color.fromARGB(255, 245, 95, 36)
                                : const Color.fromARGB(255, 237, 233, 233),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0.1,
                                color: isButtonClicker
                                    ? const Color.fromARGB(255, 86, 82, 82)
                                    : Colors.white,
                              )
                            ],
                          ),
                          height: 8.h,
                          width: isButtonClicker ? 45.w : 35.w,
                          onEnd: () {
                            isButtonClicker = false;
                          },
                          child: Text(
                            "All",
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                                color: isButtonClicker
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        width: 2.2.w,
                      ),
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
                        height: 8.h,
                        width: 35.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            const CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 245, 95, 36),
                              backgroundImage: NetworkImage(
                                  "https://cdn3d.iconscout.com/3d/premium/thumb/meat-and-bone-4741172-3946318.png"),
                            ),
                            Text(
                              "Meals items",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 2.2.w,
                      ),
                      InkWell(
                        onTap: () {
                          isButtonClicker = true;
                          setState(() {});
                        },
                        child: AnimatedContainer(
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
                          height: 8.h,
                          width: isButtonClicker ? 40.w : 25.w,
                          duration: const Duration(seconds: 1),
                          onEnd: () {
                            isButtonClicker = false;
                            setState(() {});
                          },
                          child: Text(
                            "Dessert",
                            style: TextStyle(
                                fontSize: 10.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 2.2.w,
                      ),
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
                        height: 8.h,
                        width: 25.w,
                        child: Text(
                          "Veg",
                          style: TextStyle(
                              fontSize: 10.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 2.h,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Popular Items",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.sp),
                      ),
                      Text(
                        "View More",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 245, 95, 36),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                Container(
                  height: 2.h,
                ),
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
                        width: 48.w,
                        height: 30.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 15.w,
                              backgroundImage: const NetworkImage(
                                  "https://static.onecms.io/wp-content/uploads/sites/44/2019/08/13/6930282.jpg"),
                            ),
                            Text("Indian Thali",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8.sp)),
                            const Text("Special"),
                            Text('\$12.50',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8.sp))
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
                      width: 48.w,
                      height: 30.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 15.w,
                            backgroundImage: const NetworkImage(
                                "https://static.onecms.io/wp-content/uploads/sites/44/2019/08/13/6930282.jpg"),
                          ),
                          Text("Indian Thali",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 8.sp)),
                          const Text("Special"),
                          Text('\$12.50',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 8.sp))
                        ],
                      ),
                    )
                  ]),
                ),
                Container(
                  height: 6.h,
                ),
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
                      height: 8.h,
                      width: 20.w,
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
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/MealOrder");
                        },
                        icon: const Icon(
                          Icons.shopping_bag,
                          color: Color.fromARGB(77, 66, 64, 64),
                          size: 32,
                        ))
                  ],
                )
              ])),
        ),
      ),
    );
  }
}
