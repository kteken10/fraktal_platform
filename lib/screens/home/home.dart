import 'package:flutter/material.dart';
import 'package:fraktal_platform/ui/text.dart';
import '../../constants/colors.dart';
import '../../ui/avatar_icon.dart';
import '../../ui/carousel_description.dart';
import '../../ui/footer.dart';
import '../../ui/modal/auth_modal.dart';
import '../../ui/service_card.dart';
import '../../ui/user_notif_shop_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
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
              child: Image(
                image: 
                  AssetImage('logofraktal.png'),
                 
                  height: 40,
                
              ),
            ),
            const Spacer(),
            if (!isSmallScreen) ...[
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const SocialIcons(),
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
              onAvatarTap: _openAuthModal,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 0),
                height: 700,
                child: Image(
                  image: ResizeImage(
                    AssetImage('Homeimage.jpg'),
                    width: screenWidth.toInt(), // Ajustez la largeur si nécessaire
                    height: 700,
                  ),
                  // width: screenWidth,
                  // fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Image(
                  image: ResizeImage(
                    AssetImage('arrow_down.gif'),
                    width: 100, // Ajustez la largeur si nécessaire
                    height: 100, // Ajustez la hauteur si nécessaire
                  ),
                ),
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
