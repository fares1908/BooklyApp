import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
                // fontSize:16 ,
                text: 'Free',
                textColor: Colors.black,
                backgroundColor: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    topLeft: Radius.circular(14))),
          ),
          Expanded(
            child: CustomButton(

                onPressed: () async {
                  launchURL(bookModel.volumeInfo.previewLink!);

                },
                text: getText(bookModel),
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

  getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink==null){
      return 'Not Available';
    }else{
      return 'Preview';
    }
  }
}
