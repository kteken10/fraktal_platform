import 'package:flutter/material.dart';
import '../../constants/colors.dart'; 

class UserNotifIcon extends StatelessWidget {
  final double notificationScale;
  final double avatarScale;
  final VoidCallback onNotificationHoverEnter;
  final VoidCallback onNotificationHoverExit;
  final VoidCallback onAvatarHoverEnter;
  final VoidCallback onAvatarHoverExit;
  final VoidCallback onAvatarTap;

  const UserNotifIcon({
    super.key,
    required this.notificationScale,
    required this.avatarScale,
    required this.onNotificationHoverEnter,
    required this.onNotificationHoverExit,
    required this.onAvatarHoverEnter,
    required this.onAvatarHoverExit,
    required this.onAvatarTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MouseRegion(
          onEnter: (_) => onNotificationHoverEnter(),
          onExit: (_) => onNotificationHoverExit(),
          child: AnimatedScale(
            scale: notificationScale,
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
        MouseRegion(
          onEnter: (_) => onAvatarHoverEnter(),
          onExit: (_) => onAvatarHoverExit(),
          child: AnimatedScale(
            scale: avatarScale,
            duration: const Duration(milliseconds: 200),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: GestureDetector(
                onTap: onAvatarTap,
                child: Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/userlogo.png'),
                    radius: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
