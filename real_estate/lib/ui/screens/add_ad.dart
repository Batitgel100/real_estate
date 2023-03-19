import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/appartment.dart';
import 'package:real_estate/ui/screens/widgets/custom_textfield.dart';

class AddAd extends StatefulWidget {
  const AddAd({super.key});

  @override
  State<AddAd> createState() => _AddAdState();
}

class _AddAdState extends State<AddAd> {
  final _controller = TextEditingController();
  @override
  void initState() {
    // _controller.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
        title: const Text(
          'Зар оруулах',
          style: TextStyles.white22,
        ),
      ),
      backgroundColor: AppColors.grey,
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            hint: 'Барилга, хотхоны нэр',
            controller: _controller,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Талбай',
            controller: _controller,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Өрөө',
            controller: _controller,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Ариун цэврийн өрөө',
            controller: _controller,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Давхар',
            controller: _controller,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Барилгын давхар',
            controller: _controller,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Гараж',
            controller: _controller,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Үнэ',
            controller: _controller,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Утас',
            controller: _controller,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
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
                  labelText: 'Дэлгэрэнгүй',
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
          const line(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Зураг',
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

String? validateName(String? value) {
  if (value!.length < 3) {
    return 'Name must be more than 2 charater';
  } else {
    return null;
  }
}
