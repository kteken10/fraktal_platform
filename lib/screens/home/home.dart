import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fraktal_platform/ui/text.dart';
import '../../constants/colors.dart';
import '../../ui/avatar_icon.dart';
import '../../ui/carousel_widget.dart';
import '../../ui/footer.dart';
import '../../ui/service_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _notificationScale = 1.0;
  double _avatarScale = 1.0;

  void _onNotificationEnter(PointerEvent details) {
    setState(() {
      _notificationScale = 1.1;
    });
  }

  void _onNotificationExit(PointerEvent details) {
    setState(() {
      _notificationScale = 1.0;
    });
  }

  void _onAvatarEnter(PointerEvent details) {
    setState(() {
      _avatarScale = 1.1;
    });
  }

  void _onAvatarExit(PointerEvent details) {
    setState(() {
      _avatarScale = 1.0;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
                  color: AppColors.backColor,
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
            Row(
              children: [
                // Icône de notification avec animation
                MouseRegion(
                  onEnter: _onNotificationEnter,
                  onExit: _onNotificationExit,
                  child: AnimatedScale(
                    scale: _notificationScale,
                    duration: const Duration(milliseconds: 200),
                    child: Container(
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.notifications),
                        color: AppColors.primaryColor,
                        onPressed: () {
                          // Action à effectuer lors du clic
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                // Avatar utilisateur avec animation
                MouseRegion(
                  onEnter: _onAvatarEnter,
                  onExit: _onAvatarExit,
                  child: AnimatedScale(
                    scale: _avatarScale,
                    duration: const Duration(milliseconds: 200),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('userlogo.png'),
                          radius: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SizedBox(
        child: ListView(
          children: [
            Column(
              children: [
                CarouselWidget(
                  imagePaths: ['home_carousel_1.jpg', 'home_carousel_2.jpg'],
                  texts: [
                    'Au Service du Capital Humain',
                    'Au Service du Capital Humain',
                  ],
                ),
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
      ),
    );
  }
}
