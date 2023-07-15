import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
                // fontSize:16 ,
                text: '19.99\$',
                textColor: Colors.black,
                backgroundColor: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    topLeft: Radius.circular(14))),
          ),
          Expanded(
            child: CustomButton(
                text: 'Free preview',
                textColor: Colors.white,
                backgroundColor: Color(0xffEf8262),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(14),
                    topRight: Radius.circular(14))),
          ),
        ],
      ),
    );
  }
}
