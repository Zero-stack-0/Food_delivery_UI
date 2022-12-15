import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MealOrder extends StatefulWidget {
  const MealOrder({super.key});

  @override
  State<MealOrder> createState() => _MealOrderState();
}

class _MealOrderState extends State<MealOrder> {
  bool isOptionSelected = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: EdgeInsets.only(top: 3.h, left: 2.w, right: 2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 1.h, left: 2.w, right: 2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          onPressed: (() {
                            Navigator.pushNamed(context, '/MealDetail');
                          }),
                          tooltip: "Back",
                          icon: Icon(
                            Icons.arrow_back,
                            size: 7.w,
                          )),
                      IconButton(
                          onPressed: (() {
                            Navigator.pushNamed(context, "/Home");
                          }),
                          tooltip: "Home",
                          icon: Icon(
                            Icons.home,
                            size: 7.w,
                          ))
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 22.w,
                  backgroundImage: const NetworkImage(
                      "https://static.onecms.io/wp-content/uploads/sites/44/2019/08/13/6930282.jpg"),
                ),
                Container(
                  height: 3.h,
                ),
                Text(
                  "Indian Special Thali",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                ),
                Container(
                  height: 1.h,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 3.2.w,
                        backgroundImage: const NetworkImage(
                            "https://www.shutterstock.com/image-vector/indian-food-logo-icon-templatespoonknife-260nw-1235539489.jpg"),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        "Indian",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: Colors.grey),
                      )
                    ]),
                Container(
                  height: 3.h,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.alarm),
                      const SizedBox(width: 8),
                      Text("15 min", style: TextStyle(fontSize: 10.sp)),
                      const SizedBox(width: 70),
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 227, 111, 10),
                      ),
                      const SizedBox(width: 8),
                      Text("4.8", style: TextStyle(fontSize: 10.sp)),
                      Text("(2.2k reviews)", style: TextStyle(fontSize: 10.sp)),
                      const Icon(Icons.arrow_right_sharp)
                    ]),
                Container(
                  height: 3.h,
                ),
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
                      height: 20.h,
                      width: 30.w,
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
                      height: 20.h,
                      width: 30.w,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                isOptionSelected = true;
                                setState(() {});
                              },
                              child: AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: isOptionSelected
                                        ? const Color.fromARGB(255, 245, 95, 36)
                                        : Colors.black,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                height: 20,
                                width: 20,
                              ),
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
                      height: 20.h,
                      width: 30.w,
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
                Container(
                  height: 3.h,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                  style: TextStyle(fontSize: 9.sp),
                ),
                Container(
                  height: 3.h,
                ),
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
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
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
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
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
                Container(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/Home');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 245, 95, 36),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    height: 5.h,
                    width: 90.w,
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
