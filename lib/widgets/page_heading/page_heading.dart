import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PageHeading extends StatelessWidget {
  final String title;
  const PageHeading({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 40.0
                : 70.0;
        var textFontWeight =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? FontWeight.w600
                : FontWeight.w800;

        return Text(
          title,
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: textSize,
            fontWeight: textFontWeight,
            height: 1.7,
          ),
        );
      },
    );
  }
}
