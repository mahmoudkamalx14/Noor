import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/routes/app_router.dart';
import 'package:noor/core/routes/routes.dart';

class NoorApp extends StatelessWidget {
  const NoorApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return ScreenUtilInit(
      designSize: Size(width, height),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.locationScreen,
          onGenerateRoute: appRouter.generateRoute,
          theme: ThemeData(
            scaffoldBackgroundColor: Color(0xff1D2538),
            useMaterial3: true,
          ),
        );
      },
    );
  }
}
