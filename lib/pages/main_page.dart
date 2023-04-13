import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uts_fashion_show/theme.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cart');
          },
          backgroundColor: secondaryColor,
          child: Image.asset(
            'assets/icon_cart.png',
            width: 20,
          ));
    }

    Widget customBottomNav() {
      return ClipRRect(
        // buat bikin lengkungannya
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              // currentIndex: pageProvider.currentIndex,
              onTap: (value) {
                print(value);
                // pageProvider.currentIndex = value;
              },
              backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed, //fix bug
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/icon_home.png',
                        width: 21,
                        // color: pageProvider.currentIndex==0? primaryColor:Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/icon_chat.png',
                        width: 20,
                        // color: pageProvider.currentIndex==1? primaryColor:Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/icon_wishlist.png',
                        width: 20,
                        // color: pageProvider.currentIndex==2? primaryColor:Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/icon_profile.png',
                        width: 18,
                        // color: pageProvider.currentIndex==3? primaryColor:Color(0xff808191),
                      ),
                    ),
                    label: ''),
              ]),
        ),
      );
    }

    Widget body() {
      return HomePage();
      // switch (pageProvider.currentIndex) {
      //   case 0:
      //     return HomePage();
      //     break;
      //   case 1:
      //     return ChatPage();
      //     break;
      //   case 2:
      //     return WishlistPage();
      //     break;
      //   case 3:
      //     return ProfilePage();
      //     break;
      //   default:
      //     return HomePage();
      // }
    }

    return Scaffold(
      // backgroundColor: pageProvider.currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
