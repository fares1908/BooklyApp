import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/BookAction.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/book_detailes_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * .26),
              child: ListViewItemImage(),
            ),
            SizedBox(
              height: 34,
            ),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(width: 120, child: BookingRate()),
            SizedBox(
              height: 37,
            ),
            BookAction()

          ],
        ),
      ),
    );
  }
}
// class CustomButton extends StatelessWidget {
//   const CustomButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//           horizontal: MediaQuery.of(context).size.width * .07),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(16),
//                       bottomLeft: Radius.circular(16)),
//                   color: Colors.white,
//                 ),
//                 child: MaterialButton(
//                   onPressed: () {},
//                   child: Text(
//                     '19.99\$',
//                     style: Styles.textStyle16.copyWith(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 )),
//           ),
//           Expanded(
//             child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(16),
//                       bottomRight: Radius.circular(16)),
//                   color: Color(0xffEf8262),
//                 ),
//                 child: MaterialButton(
//                   onPressed: () {},
//                   child: Text(
//                     'Free preview',
//                     style: Styles.textStyle16.copyWith(
//
//                         fontWeight: FontWeight.bold),
//                   ),
//                 )),
//           ),
//         ],
//       ),
//     );
//   }
// }



