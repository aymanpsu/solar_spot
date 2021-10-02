import 'package:flutter/material.dart';
import '../utlis/mycolors.dart';

enum InputType { text, dropdown, map, datepicker, datetimepicker }

class Input extends StatelessWidget {
  const Input({
    @required this.lebal,
    @required this.placholder,
    @required this.type,
    this.controller,
    this.postIcon,
  });

  // The values will build the input
  final String lebal;
  final String placholder;
  final InputType type;
  final TextEditingController controller;
  final Icon postIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lebal,
          style: const TextStyle(
            fontSize: 11.00,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 9.00, bottom: 21.00),
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.text,
            cursorColor: Theme.of(context).primaryColor,
            keyboardAppearance: Brightness.light,
            decoration: InputDecoration(
              fillColor: Mycolors.lightInputBackground,
              filled: true,
              border: InputBorder.none,
              focusedBorder: const OutlineInputBorder(),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              hintText: '  $placholder',
              hintStyle: const TextStyle(
                fontSize: 11.00,
              ),
              suffixIcon: postIcon,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please you need to enter name of est';
              }
              return null;
            },
            onTap: () {
              switch (type) {
                case InputType.dropdown:
                  break;
                case InputType.map:
                  break;
                case InputType.datepicker:
                  break;
                case InputType.datetimepicker:
                  break;
                default:
              }
              //  FocusScope.of(context).unfocus();
            },
          ),
        ),
      ],
    );
  }
}
