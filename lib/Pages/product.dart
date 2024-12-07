part of 'pages.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int curIndex = 0;

  List<String> imgPro = [
    'asset/image_shoes5.png',
    'asset/image_shoes6.png',
    'asset/image_shoes7.png',
    'asset/image_shoes8.png',
  ];

  List<String> imgSug = [
    'asset/image_shoes2.png',
    'asset/image_shoes3.png',
    'asset/image_shoes4.png',
  ];

  @override
  Widget build(BuildContext context) {
    Widget indicatorBar(int index) {
      return Container(
        height: 10,
        width: curIndex == index ? 30 : 10,
        margin: EdgeInsets.symmetric(horizontal: 3),
        decoration: BoxDecoration(
            color: curIndex == index ? priceColor : Colors.white,
            borderRadius: BorderRadius.circular(10)),
      );
    }

    Widget indicator() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [for (var i = 0; i < imgPro.length; i++) indicatorBar(i)],
          )
        ],
      );
    }

    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context, '/mainPage');
                  },
                  icon: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: backgroundColor6,
                      child: Icon(
                        Icons.chevron_left,
                        color: backgroundColor3,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context, '/mainPage');
                  },
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: SizedBox(
              height: 210, // Batasi tinggi slider
              child: CarouselSlider(
                items: imgPro
                    .map(
                      (e) => Image.asset(
                        e,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      curIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
          indicator(),
        ],
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.shopping_cart, color: primaryColor, size: 24),
                SizedBox(width: 8),
                Text(
                  'RedShoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                    color: blackColor,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              height: 20,
            ),
            Text(
              'Description',
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
                color: blackColor,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut magna vel arcu accumsan vulputate. Integer efficitur, lectus non dictum malesuada, ipsum elit feugiat nisl, a aliquet tortor sapien sed erat.',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                color: blackColor,
                fontWeight: regular,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Available Colors',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    color: blackColor,
                    fontWeight: bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: backgroundColor5,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 175, 41, 32),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 22, 151, 26),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 183, 143, 21),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 36, 69, 161),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 179, 15, 138),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 144, 144, 144),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 86, 160, 13),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Available Size',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    color: blackColor,
                    fontWeight: bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '10',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        )),
                    Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '40',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        )),
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '45',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Checkout our new products',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    color: blackColor,
                    fontWeight: bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                CarouselSlider(
                  items: imgSug
                      .map(
                        (e) => Image.asset(
                          e,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      autoPlayCurve: Curves.slowMiddle),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    shadowColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: backgroundColor3,
                  ),
                  child: Text(
                    'Checkout',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: whiteColor,
                    ),
                  ),
                ),
                Icon(
                  Icons.favorite,
                  size: 30,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        // Membungkus seluruh body dengan SingleChildScrollView
        child: Column(
          children: [
            header(),
            content(),
          ],
        ),
      ),
    );
  }
}
