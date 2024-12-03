part of 'widget.dart';

class Newarrival extends StatelessWidget {
  const Newarrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'asset/image_shoes6.png',
              width: 90,
              height: 90,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mount Shoe Reddy V3',
                    style: primaryTextStyle.copyWith(
                        fontWeight: bold, fontSize: 16)),
                Text(
                  '\$10.99',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
