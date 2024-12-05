part of '../pages.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Expanded(
          child: ListView(
        children: [WishlishtCard(), WishlishtCard(), WishlishtCard()],
      ));
    }

    Widget emptyWishlist() {
      return Expanded(
        child: Column(
          children: [
            Image.asset(
              'asset/image_wishlist.png',
              width: 100,
            ),
            Text(
              'What\'s wrong bud? Ain\'t dreaming?',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            Text(
              'Let\'s go around!',
              style: secondaryTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed((context), '/main');
              },
              child: Text(
                'Let\'s go!',
                style: primaryTextStyle.copyWith(fontWeight: light),
              ),
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  side: BorderSide(color: primaryColor)),
            )
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Wishlist',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    return Column(
      children: [header(), content()],
    );
  }
}
