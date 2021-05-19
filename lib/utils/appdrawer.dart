
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mypcot/utils/drawer_item.dart';
import 'package:mypcot/utils/sizeConfig.dart';


class AppDrawer extends StatefulWidget {
  

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: SizeConfig.screenWidth * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Container(
            ),
          ),
          Divider(
            height: 4,
            thickness: 0.5,
            color: Colors.black12.withOpacity(0.3),
            indent: 16,
            endIndent: 16,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // MenuItem(
                  //   asset: "assets/svg/qr_code.svg",
                  //   title: "instantBooking".tr().toString(),
                  //   onTap: () async {
                  //     Navigator.of(context).pop();
                  //     _openQrScanner();
                  //   },
                  // ),
                  MenuItem(
                    asset: "assets/svg/van.svg",
                  //  title: "myRides".tr().toString(),
                    onTap: () {
                      Navigator.of(context).pop();
                      // Navigator.of(context).push(
                      //   CupertinoPageRoute(
                      //     builder: (BuildContext context) =>
                      //         MyRides(userId: widget.user.uid),
                      //   ),
                      //);
                    },
                  ),
                  MenuItem(
                    asset: "assets/svg/king.svg",
                   // title: "gotoFamily".tr().toString(),
                    onTap: () {
                      Navigator.of(context).pop();
                      // Navigator.of(context).push(
                      //   CupertinoPageRoute(
                      //     builder: (BuildContext context) => PremiumIntro(
                      //       userId: widget.user.uid,
                      //       eliteDescription: widget.user?.eliteDescription,
                      //       isEliteMember: isEliteMember,
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                  MenuItem(
                    asset: "assets/svg/debit-card.svg",
                    title: "paymentMethods".toString(),
                    onTap: () {
                      Navigator.of(context).pop();
                      // Navigator.of(context).push(
                      //   CupertinoPageRoute(
                      //     builder: (BuildContext context) => PaymentMethod(
                      //       userId: widget.user.uid,
                      //       fromDrawer: true,
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                  MenuItem(
                    asset: "assets/svg/promotion.svg",
                    title: "offersAndPromos".toString(),
                    onTap: () {
                      Navigator.of(context).pop();
                      // Navigator.of(context).push(
                      //   CupertinoPageRoute(
                      //     builder: (BuildContext context) => Offers(),
                      //   ),
                      // );
                    },
                  ),
                  MenuItem(
                    asset: "assets/svg/support.svg",
                    title: "${"helpSupport".toString()}",
                    onTap: () {
                      Navigator.of(context).pop();
                      // Navigator.of(context).push(
                      //   CupertinoPageRoute(
                      //     builder: (BuildContext context) => HelpScreen(
                      //       user: widget.user,
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                  Divider(
                    height: 12,
                    thickness: 0.5,
                    color: Colors.black12.withOpacity(0.3),
                    indent: 16,
                    endIndent: 16,
                  ),
                  MenuItem(
                    asset: "assets/svg/share2.svg",
                    title: "share".toString(),
                    onTap: () {
                     // shareApp();
                    },
                  ),
                  MenuItem(
                    asset: "assets/svg/translate1.svg",
                    title: "language".toString(),
                    onTap: null,
                  ),
                  Divider(
                    height: 16,
                    thickness: 0.5,
                    color: Colors.white.withOpacity(0.3),
                    indent: 32,
                    endIndent: 32,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 12,
            thickness: 0.5,
            color: Colors.black12.withOpacity(0.3),
            indent: 16,
            endIndent: 16,
          ),
          // FooterView(
          //   user: widget.user,
          // ),
        ],
      ),
    );
  }

  
}
