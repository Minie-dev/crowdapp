import 'package:crowdapp/features/authentification/views/on_boarding/header.dart';
import 'package:crowdapp/features/home_pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fab_menu_bottomnav/fab_menu_bottomnav.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: FooterBar(),
    debugShowCheckedModeBanner: false,
    );
  }
}

class FooterBar extends StatefulWidget {
  const FooterBar({super.key});

  @override
  State<FooterBar> createState() => _FooterBarState();
}

class _FooterBarState extends State<FooterBar> {
  @override
  Widget build(BuildContext context) {
    return const NaviBar(
      fabColor: Colors.blue,
      navBarColor: Colors.white,
      fabIconColor: Colors.white,
      fabItems: [
        FabCont(
          icon: Icons.place,
          text: 'plane',
          color: Colors.red,
        ),
      ],
      navIconSize: 16,
      navIcon1: Icons.home,
      navIcon2: Icons.branding_watermark,
      navIcon3: Icons.padding,
      navIcon4: Icons.search,
      navIconColor: Colors.black,
      nav1Name: 'home',
      nav2Name: 'search',
      nav3Name: 'help',
      nav4Name: 'profile',
      routeList: [
        HomePage(),
        Header(),
        HomePage(),
        HomePage(),
      ],
    );
  }
}