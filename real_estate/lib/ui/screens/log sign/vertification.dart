import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/main%20screens/home_screen.dart';

class VertificationScreen extends StatefulWidget {
  const VertificationScreen({super.key});

  @override
  State<VertificationScreen> createState() => _VertificationScreenState();
}

class _VertificationScreenState extends State<VertificationScreen> {
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
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Баталгаажуулах',
                      style: TextStyle(
                          fontSize: 28,
                          color: Color.fromARGB(255, 232, 108, 108),
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Center(
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: const Text(
                                  'Та гар утсандаа ирсэн баталгаажуулах кодыг оруулна уу'))),
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
                            hintText: 'Баталгаажуулах код',
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
                      height: 10,
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
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 232, 108, 108),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            'Баталгаажуулах',
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
                            onPressed: () {},
                            child: const Text(
                              'Шинээр бүртгүүлэх',
                              style: TextStyle(
                                color: Color.fromARGB(255, 232, 108, 108),
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
