import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xff7D7D7D),
          ),
        ),
        const SizedBox(height: 6),
        TextFormField(
          obscureText: true,
          maxLength: 10,
          textInputAction: TextInputAction.done,
          decoration: const InputDecoration(
            counter: SizedBox(),
            filled: true,
            fillColor: Color(0xffF5F5F5),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(width: 1, color: Colors.lightGreen),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(
                width: 1,
                color: Color(
                  0xffD9D9D9,
                ),
              ),
            ),
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xffAAAAAA),
            ),
            hintText: '123456',
          ),
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
