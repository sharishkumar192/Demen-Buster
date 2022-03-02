import 'package:flutter/material.dart';
import 'carecentres.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: Carecentres.address.map(
        (i) {
          return DropdownMenuItem(
            child: Text("address"),
          );
        },
      ),
      onChanged: (value) {},
    );
  }
}
