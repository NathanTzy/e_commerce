part of 'widget.dart';

class WishlishtCard extends StatelessWidget {
  const WishlishtCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor3,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          ClipRRect(child: Image.asset('asset/image_shoes.png', width: 64,)),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Shoes Added", style: primaryTextStyle, overflow: TextOverflow.ellipsis,),
                Text(NumberFormat.currency(locale: 'id-ID', decimalDigits: 0, symbol: 'IDR').format(75000)),
                SizedBox(width: 12,),
                GestureDetector(
                  onTap: (){}, child: Image.asset('asset/button_wishlist_blue.png', width: 34,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}