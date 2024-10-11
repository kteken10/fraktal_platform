import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fraktal_platform/constants/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../screens/blog/blog.dart';
import '../screens/contacts/contacts.dart';
import '../screens/home/home.dart';
import '../screens/presentation/presentation.dart';
import '../screens/solutions/solutions.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final int _currentPage = 0;
  late PersistentTabController _controller;

  final List<Widget> _screens = [
    HomePage(),
    PresentationPage(),
    SolutionsPage(),
    BlogPage(),
    ContactsPage(),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.house),
        title: 'Accueil',
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: AppColors.ternaryColor
      ),

      PersistentBottomNavBarItem(
          icon: Icon(FontAwesomeIcons.puzzlePiece),
        title: 'Solutions',
        activeColorPrimary: AppColors.primaryColor,
      inactiveColorPrimary: AppColors.ternaryColor
      ),
      PersistentBottomNavBarItem(
         icon: Icon(FontAwesomeIcons.clipboardList),
        title: 'Présentation',
        activeColorPrimary: AppColors.primaryColor,
       inactiveColorPrimary: AppColors.ternaryColor
      ),
      PersistentBottomNavBarItem(
       icon: Icon(FontAwesomeIcons.blog),
        title: 'Blog',
        activeColorPrimary: AppColors.primaryColor,
     inactiveColorPrimary: AppColors.ternaryColor
      ),
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.addressBook),
        title: 'Contacts',
        activeColorPrimary: AppColors.primaryColor,
        inactiveColorPrimary: AppColors.ternaryColor
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: _currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
         
        
          child: PersistentTabView(
            context,
            controller: _controller,
            screens: _screens,
            items: _navBarsItems(context),
            backgroundColor: Colors.white,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            stateManagement: true,
             padding: const EdgeInsets.only(top: 8,bottom: 8),
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(20.0),
              colorBehindNavBar: Colors.white,
            ),
            navBarStyle: NavBarStyle.style6,
            confineToSafeArea: true,
            navBarHeight: 85, // Hauteur de la barre de navigation
          ),
        ),
      ),
    );
  }
}
