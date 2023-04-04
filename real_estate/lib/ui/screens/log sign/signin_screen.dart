import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/log%20sign/vertification.dart';
import 'package:real_estate/ui/screens/main%20screens/home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 100,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'буцах',
              style: TextStyles.white22,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 450,
            width: 450,
            child: Image.asset(
              'assets/images/real_estate.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(0, 255, 255, 255),
                    Color.fromARGB(216, 255, 255, 255),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                )),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                color: Colors.white,
                child: Column(
                  children: [
                    const Text(
                      'Бүртгүүлэх',
                      style: TextStyle(
                          fontSize: 28,
                          color: Color.fromARGB(255, 73, 152, 188),
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const TextField(
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          // keyboardType: widget.inputType,
                          // controller: widget.controller,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 20),
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            hintText: 'Хэрэглэгчийн нэр',
                            // labelText: 'Хэрэглэгчийн нэр',
                            // labelStyle: TextStyle(color: Colors.black),
                            focusColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 106, 106, 106),
                                  width: 1,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 106, 106, 106),
                                  width: 1,
                                )),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const TextField(
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          // keyboardType: widget.inputType,
                          // controller: widget.controller,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 20),
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            hintText: 'Утасны дугаар',
                            // labelText: 'Хэрэглэгчийн нэр',
                            // labelStyle: TextStyle(color: Colors.black),
                            focusColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 106, 106, 106),
                                  width: 1,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 106, 106, 106),
                                  width: 1,
                                )),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const TextField(
                          obscureText: true,
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          // keyboardType: widget.inputType,
                          // controller: widget.controller,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 20),
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            hintText: 'Нууц үг',
                            // labelText: 'Хэрэглэгчийн нэр',
                            // labelStyle: TextStyle(color: Colors.black),
                            focusColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 106, 106, 106),
                                  width: 1,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 106, 106, 106),
                                  width: 1,
                                )),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const TextField(
                          obscureText: true,
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          // keyboardType: widget.inputType,
                          // controller: widget.controller,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 20),
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            hintText: 'Нууц үг давтаж оруулна уу',
                            // labelText: 'Хэрэглэгчийн нэр',
                            // labelStyle: TextStyle(color: Colors.black),
                            focusColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 106, 106, 106),
                                  width: 1,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 106, 106, 106),
                                  width: 1,
                                )),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const VertificationScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 73, 152, 188),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            'Бүртгүүлэх',
                            style: TextStyles.white22,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
