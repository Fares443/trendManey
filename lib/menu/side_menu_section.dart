// ignore_for_file: depend_on_referenced_packages, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:trend_money1/constants.dart';
import 'package:trend_money1/menu/contact_info.dart';
import 'package:trend_money1/menu/goals.dart';


import 'logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
           const Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding:const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                const    ContactInfo(),
                  const  Divider(),
                 const   Goals(),
               const     Divider(),
                 const   SizedBox(height: kDefaultPadding),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                          //  SvgPicture.asset('assets/icons/download.svg'),
                         const   SizedBox(width: kDefaultPadding / 2),
                            Text(
                              'Download Brochure',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.only(top: kDefaultPadding * 2),
                      color: kSecondaryColor,
                      child: Row(
                        children: const [
                        Spacer(),
                        //   IconButton(
                        //     onPressed: () {},
                        //    // icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                        //   ),
                        //   IconButton(
                        //     onPressed: () {},
                        //   //  icon: SvgPicture.asset('assets/icons/github.svg'),
                        //   ),
                        //   IconButton(
                        //     onPressed: () {},
                        //  //   icon: SvgPicture.asset('assets/icons/twitter.svg'),
                        //   ),
                        //   IconButton(
                        //     onPressed: () {},
                        //  //   icon: SvgPicture.asset('assets/icons/dribble.svg'),
                        //   ),
                        Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
