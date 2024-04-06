import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.red,
        width: width,
        height: 27.h,
        child: ListTile(
            leading: CircleAvatar(
                radius: 26.r,
                // backgroundColor: kSecondary,
                backgroundImage: const AssetImage('assets/images/profile.jpg')),
            title: Text(
              "Deliver to",
              style: TextStyle(
                  fontSize: 12, color: kSecondary, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              "1987 21st AVE n.PLSYMOUTH . mh \n 556765",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 9,
                  color: kGrayLight,
                  fontWeight: FontWeight.normal),
            ),
            trailing: Text(
              gettimeofday(),
              style: TextStyle(fontSize: 30),
            )));
  }

  String gettimeofday() {
    DateTime now = DateTime.now();
    int hours = now.hour;

    if (hours >= 0 && hours < 12) {
      return "☀️";
    } else if (hours >= 12 && hours < 16) {
      return '⛅';
    } else {
      return '🌙';
    }
  }
}



// Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               CircleAvatar(
//                 radius: 25.r,
//                 backgroundColor: kSecondary,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(bottom: 6.h, left: 8.h),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Deliver to ",
//                       style: TextStyle(
//                           fontSize: 13,
//                           color: kSecondary,
//                           fontWeight: FontWeight.w600),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),