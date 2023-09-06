import 'package:flutter/material.dart';
import 'package:project1/dasboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text("Koperasi Undiksha"),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: Container(
          height: height,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                    height: height * 0.25 + 25,
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: 180,
                      height: 180,
                    )),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  width: width,
                  height: 300,
                  padding: const EdgeInsets.only(
                      top: 20, left: 8, right: 8, bottom: 5),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Username",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Center(
                        child: Container(
                          width: 320,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2,
                                        style: BorderStyle.solid))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Password",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Center(
                        child: Container(
                          width: 320,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2,
                                        style: BorderStyle.solid))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(5, 4),
                              blurRadius: 10,
                              spreadRadius: 0)
                        ]),
                        child: FilledButton(
                            style: ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue[900]),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) {
                                return DashboarPage();
                              }));
                            },
                            child: Text("Login")),
                      )),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: TextButton(
                              onPressed: () {},
                              child: Text("Daftar Marketing ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[900])),
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Lupa Password ? ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[900]),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 245,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 8),
                            alignment: Alignment.center,
                            width: width,
                            height: 50,
                            color: Colors.blue[200],
                            child: Text(
                              "copyright@2022 by Undiksha",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
