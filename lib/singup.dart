import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 20.h,
                width: 100.w,
                color: const Color.fromARGB(255, 245, 95, 36),
              ),
              Positioned(
                  top: 15.h,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    height: 20.h,
                    width: 100.w,
                  )),
            ],
          ),
          Column(
            children: <Widget>[
              const Text(
                "Let's Get Something",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 10),
              const Text(
                "Good to see you back",
                style: TextStyle(
                    color: Color.fromARGB(255, 69, 66, 66), fontSize: 15),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://blog.hubspot.com/hubfs/image8-2.jpg"),
                  ),
                  SizedBox(width: 54),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png"),
                  ),
                  SizedBox(width: 54),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://about.twitter.com/content/dam/about-twitter/en/brand-toolkit/brand-download-img-1.jpg.twimg.1920.jpg"),
                  )
                ],
              ),
              const SizedBox(height: 70),
              Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 222, 220, 220),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      height: 6.h,
                      width: 80.w,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.email,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )),
                  Container(
                    height: 2.h,
                  ),
                  Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 222, 220, 220),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      height: 6.h,
                      width: 80.w,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Username",
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.people,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )),
                  Container(
                    height: 2.h,
                  ),
                  Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 222, 220, 220),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      height: 6.h,
                      width: 80.w,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.password,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              Container(
                height: 12.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/Home");
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 95, 36),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  height: 6.h,
                  width: 80.w,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              Container(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Already have account",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/Login');
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 245, 95, 36),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
