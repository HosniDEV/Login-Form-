import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    this.text,
  });
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: Color(0xfff02c38e), borderRadius: BorderRadius.circular(10)),
        child: Text(
          '$text ',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ));
  }
}
