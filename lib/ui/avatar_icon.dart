import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/colors.dart';

class SocialIcon extends StatefulWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const SocialIcon({
    super.key,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  _SocialIconState createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  double _scale = 1.0;

  void _onEnter(PointerEvent details) {
    setState(() {
      _scale = 1.2;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _scale = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 200),
        child: Container(
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryColor.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(4, 4),
              ),
              BoxShadow(
                color: Colors.white,
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(-4, -4),
              ),
            ],
          ),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
            child: IconButton(
              icon: FaIcon(
                widget.icon,
                color: widget.color,
              ),
              onPressed: widget.onPressed,
              iconSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
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
    );
  }
}
