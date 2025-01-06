import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/helper/spacing.dart';
import 'package:noor/core/theme/app_styles.dart';
import 'package:noor/core/widgets/app_text_button.dart';
import 'package:noor/features/location/presentation/widgets/message_location_widget.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 100.h),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MessageLocationWidget(),
                verticalSpace(20),
                AppTextButton(
                  textButton: 'تحديد الموقع الجغرافي تلقائياً',
                  backgroundColor: const Color(0xFF16BF9E),
                  onPressed: () {},
                ),
                verticalSpace(10),
                AppTextButton(
                  textButton: 'تحديد الموقع الجغرافي يدوياً',
                  onPressed: () {},
                ),
                verticalSpace(20),
                Text(
                  'ستظهر رسالة من النظام تأكد موافقتك للسماح لنور بتحديد موقعك نأمل منك الموافقة عليها',
                  textAlign: TextAlign.center,
                  style: AppStyles.style18Meduim,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
