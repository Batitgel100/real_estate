import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/log%20sign/signin_screen.dart';
import 'package:real_estate/ui/screens/main%20screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 600,
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
                height: 400,
                color: Colors.white,
                child: Column(
                  children: [
                    const Text(
                      'Нэвтрэх',
                      style: TextStyle(
                          fontSize: 28,
                          color: AppColors.green,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: SizedBox(
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Нууц үг мартсан бол энд дарна уу',
                              style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            'Нэвртэх',
                            style: TextStyles.white22,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const SignInScreen()));
                            },
                            child: const Text(
                              'Шинээр бүртгүүлэх',
                              style: TextStyle(
                                color: AppColors.green,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
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
