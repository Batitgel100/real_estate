import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/appartment.dart';

class Agent extends StatefulWidget {
  const Agent({super.key});

  @override
  State<Agent> createState() => _AgentState();
}

class _AgentState extends State<Agent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
        title: const Text(
          'Агент бүртгэх',
          style: TextStyles.white22,
        ),
      ),
      backgroundColor: AppColors.grey,
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                labelText: 'Овог',
                labelStyle: TextStyles.white15,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                labelText: 'Нэр',
                labelStyle: TextStyles.white15,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                labelText: 'Регистэр',
                labelStyle: TextStyles.white15,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                labelText: 'Утас',
                labelStyle: TextStyles.white15,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Зураг', style: TextStyles.white22),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.add_a_photo_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                labelText: 'Ажилласан жил',
                labelStyle: TextStyles.white15,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: SizedBox(
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
                  fillColor: Colors.white,
                  hoverColor: Colors.white,
                  labelText: 'Товч мэдээлэл',
                  labelStyle: TextStyles.white15,
                  focusColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      )),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Байгууллагын лого',
              style: TextStyles.white22,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.add_a_photo_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                labelText: 'Цахим шуудан',
                labelStyle: TextStyles.white22,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                labelText: 'Фэйсбүүк хаяг',
                labelStyle: TextStyles.white15,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                labelText: 'Инстаграм хаяг',
                labelStyle: TextStyles.white15,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                labelText: 'Viber',
                labelStyle: TextStyles.white15,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                labelText: 'WhatsApp',
                labelStyle: TextStyles.white15,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                fillColor: Colors.white,
                hoverColor: Colors.white,
                labelText: 'LinkedIn',
                labelStyle: TextStyles.white15,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            ),
          ),
          const Line(),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Ink(
          height: MediaQuery.of(context).size.height * 0.09,
          decoration: const BoxDecoration(color: AppColors.green),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.add_box_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text(
                'Зар оруулах',
                style: TextStyles.white22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
