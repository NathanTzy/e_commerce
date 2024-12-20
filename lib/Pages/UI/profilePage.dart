part of '../pages.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  Widget menuItem(String title, icon) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(color: backgroundColor2),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: primaryTextStyle.copyWith(fontSize: 16),
              ),
            ),
            Spacer(),
            Icon(
              icon,
              size: 35,
              color: whiteColor,
            )
          ],
        ),
      ),
    );
  }

  Widget content(context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('asset/image_profile.png'),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Niello',
                          style: primaryTextStyle.copyWith(
                              fontSize: 28, fontWeight: semiBold),
                        ),
                        Text(
                          'Niello@jimel.kom',
                          style: primaryTextStyle.copyWith(
                              fontSize: 15, fontWeight: regular),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Account',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w700),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed((context), '/editPro');
                },
                child: menuItem('Edit Profile', Icons.arrow_right)),
            GestureDetector(
                onTap: () {},
                child: menuItem('Profile Settings', Icons.arrow_right)),
            GestureDetector(
                onTap: () {}, child: menuItem('Logout', Icons.exit_to_app)),
            SizedBox(
              height: 25,
            ),
            Text(
              'General',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w700),
            ),
            GestureDetector(
                onTap: () {},
                child: menuItem('Privacy and policy', Icons.arrow_right)),
            GestureDetector(
                onTap: () {},
                child: menuItem('Terms and conditions', Icons.arrow_right)),
            GestureDetector(
                onTap: () {}, child: menuItem('Feedback', Icons.arrow_right)),
            GestureDetector(
                onTap: () {}, child: menuItem('Rate app', Icons.arrow_right)),
            GestureDetector(
                onTap: () {},
                child: menuItem('Customer center', Icons.arrow_right)),
            GestureDetector(
                onTap: () {}, child: menuItem('QnA', Icons.arrow_right)),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget appbar() {
    return AppBar(
      backgroundColor: backgroundColor1,
      title: Text(
        'Profile',
        style: primaryTextStyle,
      ),
      centerTitle: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [appbar(), Expanded(child: content(context))],
    );
  }
}
