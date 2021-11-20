import 'package:flutter/material.dart';
import 'package:montcha/shared/theme.dart';

class CustomTextFormField extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final bool? isPassword;
  final TextInputType? inputType;
  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.controller,
    this.inputType,
    this.isPassword,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool? obsecureText;

  @override
  void initState() {
    super.initState();
    obsecureText = widget.isPassword ?? false;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: regular,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: blackTextStyle.copyWith(
            fontWeight: regular,
            fontSize: 16,
          ),
          validator: (value) {
            if (value != null) {
              if (value == "" || value.isEmpty) {
                return "Data belum diisi";
              }
              return null;
            }
            return "Data belum diisi";
          },
          keyboardType: widget.inputType ?? TextInputType.text,
          obscureText: obsecureText!,
          decoration: InputDecoration(
            suffixIcon: widget.isPassword != null
                ? InkWell(
                    onTap: () {
                      setState(() {
                        obsecureText = !obsecureText!;
                      });
                    },
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      color: obsecureText! ? kGreyColor : kBlackColor,
                    ),
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kGreyColor.withOpacity(0.5),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kBlackColor,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 18,
            ),
          ),
        ),
      ],
    );
  }
}
