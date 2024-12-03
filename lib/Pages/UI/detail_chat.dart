part of '../pages.dart';

class DetailChat extends StatelessWidget {
  const DetailChat({super.key});

  PreferredSizeWidget header(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: false,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back, color: primaryTextColor),
      ),
      title: Row(
        children: [
          Image.asset(
            'asset/image_shop_logo_online.png',
            width: 50,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shoe Store',
                style:
                    primaryTextStyle.copyWith(fontWeight: bold, fontSize: 18),
              ),
              Text(
                'Online',
                style: subtitleTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget chatInput() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        productPreview(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Type your message...',
                    hintStyle: primaryTextStyle,
                    filled: true,
                    fillColor: backgroundColor1,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send, color: whiteColor),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget productPreview() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 200,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: backgroundColor5,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: primaryTextColor),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'asset/image_shoes.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'RedShoes',
                        style: primaryTextStyle.copyWith(fontWeight: bold),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$5000',
                        style: primaryTextStyle.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Image.asset(
                  'asset/button_close.png',
                  width: 22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Chatbubble(
            text: 'Hi, is this still available?',
            isSender: true,
            hasProduct: true,
          ),
          Chatbubble(
            text: 'Yes',
            isSender: false,
            hasProduct: false,
          ),
          Chatbubble(
            text: 'Good',
            isSender: true,
            hasProduct: false,
          ),
          Chatbubble(
            text: 'Wanna buy?',
            isSender: false,
            hasProduct: false,
          ),
          Chatbubble(
            text: 'nope',
            isSender: true,
            hasProduct: false,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(context),
      body: Column(
        children: [
          content(),
        ],
      ),
      bottomNavigationBar: chatInput(),
    );
  }
}
