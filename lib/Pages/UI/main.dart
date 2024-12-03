part of '../pages.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  Widget header() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Budi Dinejad',
                  style: primaryTextStyle.copyWith(
                      fontSize: 24, fontWeight: semiBold),
                ),
                Text(
                  'Welcome!',
                  style: subtitleTextStyle.copyWith(color: whiteColor),
                )
              ],
            ),
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('asset/image_profile.png'))),
            )
          ],
        ));
  }

  Widget category() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: SizedBox(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    'All Products',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: borderColor)),
                  child: Text(
                    'Shoes',
                    style: primaryTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: borderColor)),
                  child: Text(
                    'Tents',
                    style: primaryTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: borderColor)),
                  child: Text(
                    'Carriers',
                    style: primaryTextStyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: borderColor)),
                  child: Text(
                    'Cargos',
                    style: primaryTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget popularProductTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          Text(
            'Popular Products',
            style: primaryTextStyle.copyWith(
                fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget newArrivalTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'New Arrival',
            style: primaryTextStyle.copyWith(
                fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            'See more',
            style: primaryTextStyle,
          )
        ],
      ),
    );
  }

  Widget newArrivalPro() {
    return Container(
      margin: EdgeInsets.only(left: 15, bottom: 10),
      child: Column(
        children: [Newarrival()],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            header(),
            category(),
            Row(
              children: [
                popularProductTitle(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Productcard(),
                    Productcard(),
                    Productcard(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            newArrivalTitle(),
            newArrivalPro(),
            newArrivalPro(),
            newArrivalPro()
          ],
        ),
      ),
    );
  }
}
