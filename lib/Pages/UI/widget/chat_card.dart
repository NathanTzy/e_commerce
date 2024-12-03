part of 'widget.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/detailChat');
        },
        child: Container(
          child: Row(
            children: [
              Image.asset(
                'asset/icon_headset.png',
                width: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: primaryTextStyle.copyWith(fontSize: 18),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: whiteColor, // Warna background
                        borderRadius:
                            BorderRadius.circular(4), // Sudut membulat
                      ),
                      child:
                          Text('Online', style: TextStyle(color: greenColor)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
