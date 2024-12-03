part of 'widget.dart';

class Chatbubble extends StatelessWidget {
  const Chatbubble(
      {super.key,
      this.text = '',
      this.isSender = false,
      this.hasProduct = false});

  final String text;
  final bool isSender;
  final bool hasProduct;
  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 265,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
            color: backgroundColor5,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            border: Border.all(color: whiteColor)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'asset/image_shoes.png',
                    width: 64,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'RedShoes',
                        style: primaryTextStyle.copyWith(
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '\$5000',
                        style: primaryTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Buy now',
                      style: primaryTextStyle,
                    )),
                SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: primaryColor),
                        backgroundColor: primaryColor),
                    onPressed: () {},
                    child: Text(
                      'Add to cart',
                      style: primaryTextStyle,
                    ))
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              decoration: BoxDecoration(
                  color: backgroundColor5,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender ? 20 : 0),
                      topRight: Radius.circular(isSender ? 0 : 20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: primaryTextStyle,
                ),
              )),
        ],
      ),
    );
  }
}
