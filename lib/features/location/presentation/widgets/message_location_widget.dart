import 'package:flutter/material.dart';
import 'package:noor/core/theme/app_styles.dart';

class MessageLocationWidget extends StatelessWidget {
  const MessageLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/icons/privacy-policy.png'),
        Text(
          'بياناتك اّمنة ولا نحتفظ بها',
          style: AppStyles.style24BoldWhite,
        ),
        Text(
          'نور بحاجة لمعرفة موقعك الجغرافي ليحدد لك بشكل دقيق واّلي مواقيت الأذان والصلاةواتجاه القبلة أيضاً. وتطمئن فبياناتك اّمنة ولا نحتفظ بها',
          textAlign: TextAlign.center,
          style: AppStyles.style18Meduim,
        ),
      ],
    );
  }
}
