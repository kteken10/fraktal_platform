# fraktal_platform

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isSmallScreen ? 2 : 3, // Deux colonnes sur mobile, trois sur grand écran
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 16.0,
                  ),
                  itemCount: 6, // Nombre total de rectangles
                  itemBuilder: (context, index) {
                    return SizedBox(
                   
                      child: ServiceCard(
                        label: getLabel(index),
                        imagePath: getImagePath(index),
                        onTap: () => print("Rectangle $index tapped"),
                      ),
                    );
                  },
                ),