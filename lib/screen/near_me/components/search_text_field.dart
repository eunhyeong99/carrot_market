import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          disabledBorder: buildOutLineInputBorder(),
          enabledBorder: buildOutLineInputBorder(),
          focusedBorder: buildOutLineInputBorder(),
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          contentPadding: const EdgeInsets.only(
              left: 0.0, bottom: 15.0, top: 15.0, right: 0.0),
          hintText: '좌동 주변 가게를 찾아 보세요.',
          hintStyle: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 0.5, color: Color(0xFFD4D5DD)),
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
