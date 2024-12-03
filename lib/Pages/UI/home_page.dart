part of '../pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  Widget floatButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: Image.asset('asset/icon_cart.png', width: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      backgroundColor: primaryColor,
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return Main();
      case 1:
        return Chat();
      case 2:
        return Wishlist();
      case 3:
        return Profile();
      default:
        return HomePage();
    }
  }

  Widget customBottomBar() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      clipBehavior: Clip.antiAlias,
      child: BottomAppBar(
          height: 80,
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          color: backgroundColor4,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              elevation: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'asset/icon_home.png',
                      width: 21,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'asset/icon_chat.png',
                      width: 20,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'asset/icon_wishlist.png',
                      width: 20,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'asset/icon_profile.png',
                      width: 18,
                    ),
                    label: '')
              ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor1,
        floatingActionButton: floatButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customBottomBar(),
        body: body());
  }
}
