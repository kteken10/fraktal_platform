import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fraktal_platform/ui/text.dart';
import '../../constants/colors.dart';
import '../../ui/avatar_icon.dart';
import '../../ui/carousel_description.dart';
import '../../ui/footer.dart';
import '../../ui/modal/auth_modal.dart';
import '../../ui/service_card.dart';
import '../../ui/user_notif_icon.dart'; 

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _notificationScale = 1.0;
  double _avatarScale = 1.0;

  void _onNotificationEnter() {
    setState(() {
      _notificationScale = 1.1;
    });
  }

  void _onNotificationExit() {
    setState(() {
      _notificationScale = 1.0;
    });
  }

  void _onAvatarEnter() {
    setState(() {
      _avatarScale = 1.1;
    });
  }

  void _onAvatarExit() {
    setState(() {
      _avatarScale = 1.0;
    });
  }

  void _openAuthModal() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AuthModal(); 
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth <= 600;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 0.0),
              child: Image.asset('logofraktal.png', height: 40),
            ),
            const Spacer(),
            if (!isSmallScreen) ...[
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  // color: AppColors.backColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: 8.0),
                    SocialIcon(
                      icon: FontAwesomeIcons.instagram,
                      color: Colors.pink,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    SocialIcon(
                      icon: FontAwesomeIcons.play,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    SocialIcon(
                      icon: FontAwesomeIcons.linkedinIn,
                      color: AppColors.primaryColor,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    SocialIcon(
                      icon: FontAwesomeIcons.facebookF,
                      color: AppColors.primaryColor,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    SocialIcon(
                      icon: FontAwesomeIcons.twitter,
                      color: AppColors.primaryColor,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
            const Spacer(),
            UserNotifIcon(
              notificationScale: _notificationScale,
              avatarScale: _avatarScale,
              onNotificationHoverEnter: _onNotificationEnter,
              onNotificationHoverExit: _onNotificationExit,
              onAvatarHoverEnter: _onAvatarEnter,
              onAvatarHoverExit: _onAvatarExit,
              onAvatarTap: _openAuthModal, // Ouvrir la modale sur le clic
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
            // ImageDisplay(imagePath: 'Homeimage.jpg'),
              Center(
                child: Image.asset('arrow_down.gif'),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextWidget(
                  typeText: TextType.textXl,
                  'Nos Services et Solutions',
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              ),
              const ServiceCard(),
              const Footer(),
            ],
          ),
        ],
      ),
    );
  }
}
