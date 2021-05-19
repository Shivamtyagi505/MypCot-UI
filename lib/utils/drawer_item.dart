
import 'package:flutter/material.dart';

import 'package:mypcot/utils/sizeConfig.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function onTap;
  final String asset;

  const MenuItem({Key key, this.title, this.onTap, this.asset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
          width: SizeConfig.defaultSize * 3,
          height: SizeConfig.defaultSize * 3,
          alignment: Alignment.center,
         // child: SvgPicture.asset(asset),
        ),
        title: Text(
          title,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.subtitle2.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: SizeConfig.defaultSize * 2.2,
              ),
        ),
      ),
    );
  }
}
