import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:real_estate/constants/color.dart';
import 'package:real_estate/ui/screens/appartment.dart';
import 'package:real_estate/ui/screens/widgets/custom_textfield.dart';

class AddAd extends StatefulWidget {
  const AddAd({super.key});

  @override
  State<AddAd> createState() => _AddAdState();
}

class _AddAdState extends State<AddAd> {
  final _buildingController = TextEditingController();
  final _sizeController = TextEditingController();
  final _roomController = TextEditingController();
  final _bathController = TextEditingController();
  final _floorController = TextEditingController();
  final _garageController = TextEditingController();
  final _priceController = TextEditingController();
  final _phoneController = TextEditingController();
  final _moreController = TextEditingController();
  final _holboosController = TextEditingController();
  final _cityController = TextEditingController();
  final _districtController = TextEditingController();
  final _dateController = TextEditingController();

  final _baliconController = TextEditingController();
  final _windowsController = TextEditingController();
  final List<String> _genderOptions = ['Модон', 'Пилта', 'Other'];

  File? image;
  final _controller = TextEditingController();
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } catch (e) {
      print('fail');
    }
  }

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
            controller: _buildingController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Талбай',
            controller: _sizeController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Өрөө',
            controller: _roomController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Ариун цэврийн өрөө',
            controller: _bathController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Давхар',
            controller: _floorController,
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
            controller: _garageController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Үнэ',
            controller: _priceController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Утас',
            controller: _phoneController,
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
                style: TextStyle(color: Colors.white),
                maxLines: 5,
                decoration: InputDecoration(
                  // contentPadding:
                  //     EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Line(),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Зураг',
              style: TextStyles.white15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: image != null
                ? Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.file(
                      image!,
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  )
                : InkWell(
                    onTap: () {
                      pickImage();
                    },
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
          ),
          CustomTextField(
            hint: 'Холбоос',
            controller: _holboosController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Line(),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'байршил',
              style: TextStyles.white15,
            ),
          ),
          CustomTextField(
            hint: 'Аймаг, Нийслэл',
            controller: _cityController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Сум / Дүүрэг',
            controller: _districtController,
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
                style: TextStyle(color: Colors.white),
                maxLines: 5,
                decoration: InputDecoration(
                  // contentPadding:
                  //     EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
                  fillColor: Colors.white,
                  hoverColor: Colors.white,
                  labelText: 'Дэлгэрэнгүй байршил',
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
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Байршилд тааруулах',
              style: TextStyles.white15,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Line(),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Бусад мэдээлэл',
              style: TextStyles.white15,
            ),
          ),
          CustomTextField(
            hint: 'Ашиглалтад орсон он',
            controller: _dateController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Тагт',
            controller: _baliconController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          CustomTextField(
            hint: 'Цонх',
            controller: _windowsController,
            baseColor: Colors.transparent,
            borderColor: Colors.white,
            errorColor: Colors.red,
            validator: validateName,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField(
                  isExpanded: true,
                  style: TextStyles.white15,
                  iconSize: 30,
                  // iconDisabledColor: Colors.white,
                  iconEnabledColor: Colors.white,
                  dropdownColor: AppColors.grey,
                  decoration: const InputDecoration(
                    labelText: 'Шал',
                    hintStyle: TextStyles.white15,
                    labelStyle: TextStyles.white15,
                  ),
                  items: _genderOptions
                      .map((gender) => DropdownMenuItem(
                            value: gender,
                            child: Text(
                              gender,
                              style: TextStyles.white15bold,
                            ),
                          ))
                      .toList(),
                  // validator: FormBuilderValidators.required(context),
                  onChanged: (value) {
                    print('Selected Gender: $value');
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField(
                  isExpanded: true,
                  style: TextStyles.white15,
                  iconSize: 30,
                  // iconDisabledColor: Colors.white,
                  iconEnabledColor: Colors.white,
                  dropdownColor: AppColors.grey,
                  decoration: const InputDecoration(
                    labelText: 'Шал',
                    hintStyle: TextStyles.white15,
                    labelStyle: TextStyles.white15,
                  ),
                  items: _genderOptions
                      .map((gender) => DropdownMenuItem(
                            value: gender,
                            child: Text(
                              gender,
                              style: TextStyles.white15bold,
                            ),
                          ))
                      .toList(),
                  // validator: FormBuilderValidators.required(context),
                  onChanged: (value) {
                    print('Selected Gender: $value');
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField(
                  isExpanded: true,
                  style: TextStyles.white15,
                  iconSize: 30,
                  // iconDisabledColor: Colors.white,
                  iconEnabledColor: Colors.white,
                  dropdownColor: AppColors.grey,
                  decoration: const InputDecoration(
                    labelText: 'Шал',
                    hintStyle: TextStyles.white15,
                    labelStyle: TextStyles.white15,
                  ),
                  items: _genderOptions
                      .map((gender) => DropdownMenuItem(
                            value: gender,
                            child: Text(
                              gender,
                              style: TextStyles.white15bold,
                            ),
                          ))
                      .toList(),
                  // validator: FormBuilderValidators.required(context),
                  onChanged: (value) {
                    print('Selected Gender: $value');
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Botbar(),
    );
  }
}

class Botbar extends StatelessWidget {
  const Botbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
              style: TextStyles.white15,
            ),
          ],
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
