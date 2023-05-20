import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GifComination extends StatelessWidget {
  const GifComination({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/videos/v5.gif',height: 100,),
           SizedBox(width: 100.w,),
            Image.asset('assets/videos/v5.gif',height: 100,)
          ],
        ),
        Image.asset('assets/videos/v5.gif',),
        Row(
          children: [
            Image.asset('assets/videos/v5.gif',height: 100,),
            Image.asset('assets/videos/v5.gif',height: 100,)
          ],
        ),
      ],
    );
  }
}
