import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants/colors.dart';
import '../../ui/avatar_icon.dart';
import '../../ui/carousel_widget.dart';
import '../../ui/rectangle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth <= 340;
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
                    buildSocialIcon(
                      icon: FontAwesomeIcons.instagram,
                      color: Colors.pink,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    buildSocialIcon(
                      icon: FontAwesomeIcons.play,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    buildSocialIcon(
                      icon: FontAwesomeIcons.linkedinIn,
                      color: AppColors.primaryColor,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16.0),
                    buildSocialIcon(
                      icon: FontAwesomeIcons.facebookF,
                      color: AppColors.primaryColor,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
            const Spacer(),
            const SizedBox(width: 16.0),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/userlogo.png'),
                radius: 20,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              CarouselWidget(
                imagePaths: ['home_carousel_1.jpg', 'home_carousel_2.jpg'],
                texts: [
                  'Au Service du Capital Humain',
                  'Au Service du Capital Humain'
                ],
              ),
              Center(
                child: Image.asset('arrow_down.gif'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Nos Services',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              
              SizedBox(
                height: 800,
                child: Row(
                  children: [
                   
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                         
                          Expanded(
                            child: Column(
                              children: [
                                Rectangle(label: 'Rectangle 1A'),
                                Rectangle(label: 'Rectangle 1B'),
                              ],
                            ),
                          ),
                          
                          Expanded(
                            child: Column(
                              children: [
                                Rectangle(label: 'Rectangle 2A'),
                                Rectangle(label: 'Rectangle 2B'),
                              
                                
                              ],
                            ),
                          ),
                          
                          Expanded(
                            child: Column(
                              children: [
                                Rectangle(label: 'Rectangle 3A'),
                                Rectangle(label: 'Rectangle 3B'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
               
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.green,
                        child: const Center(
                          child: Text(
                            'Colonne 2',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
