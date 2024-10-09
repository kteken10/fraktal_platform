import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import '../screens/blog/blog.dart';
import '../screens/contacts/contacts.dart';
import '../screens/home/home.dart';
import '../screens/presentation/presentation.dart';
import '../screens/solutions/solutions.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: const [
              HomePage(),           
              PresentationPage(),   
              SolutionsPage(),      
              BlogPage(),          
              ContactsPage(),      
            ],
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: BottomBar(
                backgroundColor: Colors.transparent,
                selectedIndex: _currentPage,
                onTap: (int index) {
                  _pageController.jumpToPage(index);
                  setState(() => _currentPage = index);
                },
                items: const <BottomBarItem>[
                  BottomBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Home'),
                    activeColor: Color.fromARGB(255, 23, 92, 210),
                  ),
                    BottomBarItem(
                    icon: Icon(Icons.business),
                    title: Text('Solutions'),
                    activeColor: Color.fromARGB(255, 23, 92, 210),
                  ),
                  BottomBarItem(
                    icon: Icon(Icons.info),
                    title: Text('Presentation'),
                    activeColor: Color.fromARGB(255, 23, 92, 210),
                  ),
                
                  BottomBarItem(
                    icon: Icon(Icons.article),
                    title: Text('Blog'),
                    activeColor: Color.fromARGB(255, 23, 92, 210),
                  ),
                  BottomBarItem(
                    icon: Icon(Icons.contact_mail),
                    title: Text('Contacts'),
                    activeColor: Color.fromARGB(255, 23, 92, 210),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
