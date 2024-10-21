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

 final containerWidth = constraints.maxWidth * 0.85;
 Container(
                        margin: EdgeInsets.symmetric(vertical: 32, horizontal: 8),
                        width: containerWidth,
                        child: Row(
                          children: List.generate(tabLabels.length, (index) {
                            return Expanded(
                              child: TabService(
                                title: tabLabels[index],
                                isSelected: _selectedTabIndex == index,
                                onTap: () {
                                  setState(() {
                                    _selectedTabIndex = index;
                                  });
                                },
                              ),
                            );
                          })),
                      )