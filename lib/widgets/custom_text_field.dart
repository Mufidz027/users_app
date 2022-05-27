import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  TextEditingController? textEditingController;
  IconData? iconData;
  String? hintText;
  bool? isObsecre = true;
  bool? enabled = true;

  CustomTextField({
    Key? key,
    this.textEditingController,
    this.iconData,
    this.hintText,
    this.isObsecre,
    this.enabled,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: TextFormField(
        enabled: widget.enabled,
        controller: widget.textEditingController,
        obscureText: widget.isObsecre!,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            widget.iconData,
            color: const Color.fromARGB(255, 23, 111, 184),
          ),
          focusColor: Theme.of(context).primaryColor,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}