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
        // Icône du panier
        MouseRegion(
          onEnter: (_) => {}, 
          onExit: (_) => {},
          child: AnimatedScale(
            scale: notificationScale, 
            duration: const Duration(milliseconds: 200),
            child: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(4, 4),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(-4, -4),
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(Icons.shopping_cart), 
                color: AppColors.primaryColor,
                onPressed: () {
                
                },
              ),
            ),
          ),
        ),
        const SizedBox(width: 16.0),
     
        MouseRegion(
          onEnter: (_) => onNotificationHoverEnter(),
          onExit: (_) => onNotificationHoverExit(),
          child: AnimatedScale(
            scale: notificationScale,
            duration: const Duration(milliseconds: 200),
            child: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(4, 4),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(-4, -4),
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(Icons.notifications),
                color: AppColors.primaryColor,
                onPressed: () {
                 
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
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primaryColor.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(4, 4),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(-4, -4),
                      ),
                    ],
                  ),
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
