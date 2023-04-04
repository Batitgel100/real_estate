import 'package:flutter/material.dart';

import '../../../constants/color.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final Color baseColor;
  final Color borderColor;
  final Color errorColor;
  final TextInputType inputType;
  final bool obscureText;
  final Function validator;
  // final Function onChanged;

  const CustomTextField(
      {required this.hint,
      required this.controller,
      // required this.onChanged,
      required this.baseColor,
      required this.borderColor,
      required this.errorColor,
      this.inputType = TextInputType.text,
      this.obscureText = false,
      required this.validator});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late Color currentColor;

  @override
  void initState() {
    super.initState();
    currentColor = widget.borderColor;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        keyboardType: widget.inputType,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          fillColor: Colors.white,
          hoverColor: Colors.white,
          labelText: widget.hint,
          labelStyle: TextStyles.white15,
          focusColor: Colors.white,
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2,
              )),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2,
              )),
        ),
      ),
    );
    // Card(
    //   elevation: 0.0,
    //   color: Colors.white,
    //   shape: RoundedRectangleBorder(
    //     side: BorderSide(color: currentColor, width: 2.0),
    //     borderRadius: BorderRadius.circular(20.0),
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 10.0),
    //     child: TextField(
    // obscureText: widget.obscureText,
    //       // onChanged: (text) {
    //       //   widget.onChanged(text);
    //       //   setState(() {
    //       //     if (!widget.validator(text) || text.isEmpty) {
    //       //       currentColor = widget.errorColor;
    //       //     } else {
    //       //       currentColor = widget.baseColor;
    //       //     }
    //       //   });
    //       // },

    //       decoration: InputDecoration(
    //         hintStyle: TextStyle(
    //           color: widget.baseColor,
    //           fontFamily: "OpenSans",
    //           fontWeight: FontWeight.w300,
    //         ),
    //         border: InputBorder.none,
    //         hintText: widget.hint,
    //       ),
    //     ),
    //   ),
    // );
  }
}
