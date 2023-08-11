import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const PrimaryButton({Key? key, this.onPressed, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    var height = size.height;
    var width = size.width;
    return SizedBox(
      width: width,
      child: TextButton(onPressed:onPressed,
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xffb762a39),
              padding: const EdgeInsets.symmetric(vertical: 12 ),
              shape: RoundedRectangleBorder(
                borderRadius:  BorderRadius.circular(10),
              )
          ),
          child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          )),
    );
  }
}

