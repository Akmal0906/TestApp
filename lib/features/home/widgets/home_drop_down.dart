import 'package:flutter/material.dart';
import 'package:whitelabel/common/extension/theme_extension.dart';
import 'package:whitelabel/domain/models/gym/gym_model.dart';

import '../../../common/colors/static_colors.dart';

class HomeDropDown extends StatefulWidget {
  HomeDropDown({
    super.key,
    required this.onchange,
    required this.hintText,
    this.list=const [],
  });

  final ValueChanged<String?> onchange;
  String hintText;
  final List<GymModel> list;

  @override
  State<HomeDropDown> createState() => _HomeDropDownState();
}

class _HomeDropDownState extends State<HomeDropDown> {

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      //expandedInsets: const EdgeInsets.only(left: 10),
      initialSelection: widget.hintText,
      width: MediaQuery.sizeOf(context).width * 0.75,

      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6), // ⬅ Rounded corners
          borderSide: BorderSide(color: Colors.green), // optional border color
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Color(0xff9CA3AF)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
      trailingIcon: Icon(Icons.keyboard_arrow_down),
      selectedTrailingIcon: Icon(Icons.keyboard_arrow_up),

      onSelected: (value) {
        setState(() {
          widget.hintText = value ?? "";
        });
        widget.onchange(value);
      },
      // trailingIcon: const Icon(
      //   Icons.check,
      //   color: StaticColors.slateBlue,
      // ),
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: StaticColors.nero,
        fontFamily: 'Muller'
      ),
      menuStyle: MenuStyle(
        backgroundColor: const WidgetStatePropertyAll(Colors.white),
        minimumSize: WidgetStatePropertyAll(
          Size(MediaQuery.sizeOf(context).width * 0.75, 0),
        ),
        maximumSize: WidgetStatePropertyAll(
          Size(MediaQuery.sizeOf(context).width * 0.75, 300),
        ),
        // minimumSize: WidgetStateProperty.all(Size(42,MediaQuery.sizeOf(context).width*0.7)),
        // maximumSize: WidgetStateProperty.all(Size(300,MediaQuery.sizeOf(context).width*0.75)),

        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
      ),
      dropdownMenuEntries: [
        ...List.generate(
          widget.list.length,
          (index) => DropdownMenuEntry(
            value: widget.list[index].name??"",
            label: widget.list[index].name??"",
            trailingIcon:
                widget.hintText == widget.list[index].name
                    ? Icon(Icons.check, color: StaticColors.nero)
                    : null,
            style: MenuItemButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: context.colors.primary,
              overlayColor: Colors.green,
              elevation: 0,
              textStyle: TextStyle(
                fontFamily: 'Muller',
                fontWeight: FontWeight.w400,
                fontSize: 14

              )

            ),
          ),
        ).toList(),
        // DropdownMenuEntry(
        //   value: 'two',
        //   label: 'Two',
        //   trailingIcon:
        //       widget.hintText == 'two'
        //           ? Icon(Icons.check, color: StaticColors.nero)
        //           : null,
        //
        //   style: MenuItemButton.styleFrom(
        //     backgroundColor: Colors.white,
        //     foregroundColor: context.colors.primary,
        //     overlayColor: Colors.green,
        //   ),
        // ),
        // DropdownMenuEntry(
        //   value: 'three',
        //   label: 'Three',
        //   trailingIcon:
        //       widget.hintText == 'three'
        //           ? Icon(Icons.check, color: StaticColors.nero)
        //           : null,
        //
        //   style: MenuItemButton.styleFrom(
        //     backgroundColor: Colors.white,
        //     foregroundColor: context.colors.primary,
        //     overlayColor: Colors.green,
        //   ),
        // ),
      ],
    );
  }
}
