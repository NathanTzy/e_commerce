part of '../pages.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  Widget content() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          CircleAvatar(
            radius: 64,
            backgroundImage: AssetImage('asset/image_shoes.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Tex upt(
              'Budi Dinejad',
              style: primaryTextStyle.copyWith(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }

  PreferredSizeWidget appbar(context) {
    return AppBar(
      backgroundColor: backgroundColor1,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: whiteColor,
        ),
      ),
      title: Text(
        'Edit profile',
        style: primaryTextStyle.copyWith(
            fontSize: 20, fontWeight: FontWeight.w700),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      appBar: appbar(context),
      body: content(),
    );
  }
}
