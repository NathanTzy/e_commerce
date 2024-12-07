part of '../pages.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  Widget content() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('asset/image_shoes.png'),
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('asset/image_shoes.png'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Budi Dinejad',
              style: primaryTextStyle.copyWith(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          nameInput(),
          SizedBox(
            height: 10,
          ),
          usernameInput(),
          SizedBox(
            height: 10,
          ),
          emailInput(),
          SizedBox(
            height: 20,
          ),
          button()
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

  Widget nameInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor3,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.person,
                color: whiteColor,
                size: 30,
              ),
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Input name',
                  hintStyle: primaryTextStyle.copyWith(
                    fontSize: 16,
                    color: subtitleColor, // Warna teks placeholder
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                ),
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget usernameInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor3,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.book,
                color: whiteColor,
                size: 30,
              ),
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Input username',
                  hintStyle: primaryTextStyle.copyWith(
                    fontSize: 16,
                    color: subtitleColor, // Warna teks placeholder
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                ),
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget emailInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor3,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.mail,
                color: whiteColor,
                size: 30,
              ),
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Input email',
                  hintStyle: primaryTextStyle.copyWith(
                    fontSize: 16,
                    color: subtitleColor, // Warna teks placeholder
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                ),
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget button() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 103, 7, 193),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              textAlign: TextAlign.center,
              'Confirm',
              style: primaryTextStyle.copyWith(
                  fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
        ),
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
