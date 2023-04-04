import 'package:flutter/material.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/add_ad.dart';

import '../widgets/custom_textfield.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final _controller = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNAmeController = TextEditingController();
  final registerController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordAgainController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const UserScreen()));
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Хэрэглэгч бүртгэх',
          style: TextStyles.white22,
        ),
      ),
      backgroundColor: AppColors.grey,
      body: ListView(
        children: [
          CustomTextField(
            hint: 'Овог',
            controller: firstNameController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Нэр',
            controller: lastNAmeController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Регистр',
            controller: registerController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Утас',
            controller: phoneNumberController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Цахим шуудан',
            controller: emailController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Нэвтрэх нэр',
            controller: userNameController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Нууц үг',
            controller: passwordController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Нуут үг давтах',
            controller: passwordAgainController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Цахим шуудан',
            controller: _controller,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
        ],
      ),
      // bottomNavigationBar: Container(),
    );
  }
}

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        backgroundColor: AppColors.green,
        title: const Text('Хэрэглэгч'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          'Batitgel Unurjargal',
                          style: TextStyles.white15,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          'Регистр',
                          style: TextStyles.white15,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          '99999999',
                          style: TextStyles.white15,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          'batitgel100@gmail.com',
                          style: TextStyles.white15,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          'batitgel100',
                          style: TextStyles.white15,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(
                          'Batitgel Unurjargal',
                          style: TextStyles.white15,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
