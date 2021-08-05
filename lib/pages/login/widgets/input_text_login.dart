import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:little_daffy/utils/app_colors.dart';
import 'package:little_daffy/utils/responsive.dart';

class InputTextLogin extends StatelessWidget {
  
  final String iconPath, placeholder;
  const InputTextLogin({Key key, @required this.iconPath, @required this.placeholder}) : assert(iconPath!=null && placeholder!=null), super(key: key);
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return CupertinoTextField(
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
            prefix: Container(
              width: responsive.ip(4),
              height: responsive.ip(3),
              padding: EdgeInsets.all(2),
              child: SvgPicture.asset(this.iconPath, color: Color(0xffdddddd),),
            ),
            placeholder: this.placeholder,
            style:  TextStyle(fontFamily: 'luxia'),
            placeholderStyle: TextStyle(fontFamily: 'luxia', color: Color(0xffcccccc)),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width:1, color: AppColors.gray))
            )
    );
  }
}