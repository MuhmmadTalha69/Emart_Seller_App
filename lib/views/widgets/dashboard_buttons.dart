import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

Widget dashboardButton(context, {title, num? count, String? IconData}) {
  var size = MediaQuery.of(context).size;
  return Row(
    children: [
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          boldText(text: title, size: 16.0),
          boldText(text: count, size: 20.0)
        ],
      )),
      Image.asset(
        IconData!,
        width: 40,
        color: white,
      )
    ],
  )
      .box
      .color(red)
      .rounded
      .size(size.width * 0.4, 80)
      .padding(EdgeInsets.all(8))
      .make();
}