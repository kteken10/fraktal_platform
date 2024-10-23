import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class UserNotifIcon extends StatefulWidget {
  final double avatarScale;
  final VoidCallback onNotificationHoverEnter;
  final VoidCallback onNotificationHoverExit;
  final VoidCallback onAvatarHoverEnter;
  final VoidCallback onAvatarHoverExit;
  final VoidCallback onAvatarTap;

  const UserNotifIcon({
    super.key,
    required this.avatarScale,
    required this.onNotificationHoverEnter,
    required this.onNotificationHoverExit,
    required this.onAvatarHoverEnter,
    required this.onAvatarHoverExit,
    required this.onAvatarTap, required double notificationScale,
  });

  @override
  _UserNotifIconState createState() => _UserNotifIconState();
}

class _UserNotifIconState extends State<UserNotifIcon> {
  double shoppingCartScale = 1.0; // Échelle initiale de l'icône du panier
  double notificationScale = 1.0; // Échelle initiale de l'icône de notification

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icône du panier
        MouseRegion(
          onEnter: (_) {
            setState(() {
              shoppingCartScale = 1.2; // Agrandir l'icône
            });
          },
          onExit: (_) {
            setState(() {
              shoppingCartScale = 1.0; // Rétablir l'échelle
            });
          },
          child: AnimatedScale(
            scale: shoppingCartScale,
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
                  // Action à effectuer lors du clic sur le panier
                },
              ),
            ),
          ),
        ),
        const SizedBox(width: 16.0),

        // Icône de notification
        MouseRegion(
          onEnter: (_) {
            setState(() {
              notificationScale = 1.2; // Agrandir l'icône
            });
            widget.onNotificationHoverEnter();
          },
          onExit: (_) {
            setState(() {
              notificationScale = 1.0; // Rétablir l'échelle
            });
            widget.onNotificationHoverExit();
          },
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
                  // Action à effectuer lors du clic sur la notification
                },
              ),
            ),
          ),
        ),
        const SizedBox(width: 16.0),

        // Icône de l'avatar
        MouseRegion(
          onEnter: (_) => widget.onAvatarHoverEnter(),
          onExit: (_) => widget.onAvatarHoverExit(),
          child: AnimatedScale(
            scale: widget.avatarScale,
            duration: const Duration(milliseconds: 200),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: GestureDetector(
                onTap: widget.onAvatarTap,
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
