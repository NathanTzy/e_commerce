part of '../pages.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor2,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(fontWeight: bold),
        ),
        automaticallyImplyLeading: false,
      );
    }

    Widget message() {
      return Column(
        children: [ChatCard()],
      );
    }

    Widget noMessage() {
      return Center(
        child: Text(
          'No Message',
          style: primaryTextStyle,
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor1,
        body: ListView(
          children: [header(), noMessage(), message()],
        ));
  }
}

