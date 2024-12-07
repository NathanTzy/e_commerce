part of '../pages.dart';

class SigninPages extends StatefulWidget {
  const SigninPages({super.key});

  @override
  State<SigninPages> createState() => _SigninPagesState();
}

class _SigninPagesState extends State<SigninPages> {
  Widget inputEmail() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
          SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Your Email Address',
              hintStyle: subtitleTextStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              fillColor: backgroundColor2,
              filled: true,
            ),
            style: primaryTextStyle,
          )
        ],
      ),
    );
  }

  Widget submitButton() {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/homePage');
        },
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Sign In',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget inputPassword() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
          SizedBox(height: 8),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Your Password',
              hintStyle: subtitleTextStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              fillColor: backgroundColor2,
              filled: true,
            ),
            style: primaryTextStyle,
          )
        ],
      ),
    );
  }

  Widget footer() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/signUp');
            },
            child: Text(
              "Don't have any account?",
              style:
                  subtitleTextStyle.copyWith(fontSize: 13, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Login',
                style:
                    primaryTextStyle.copyWith(fontSize: 30, fontWeight: bold),
              ),
              SizedBox(height: 2),
              Text(
                'Sign In to Continue',
                style: subtitleTextStyle.copyWith(
                    color: const Color.fromARGB(255, 203, 203, 203)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget option() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 60),
        ),
        Text(
          'Or login with',
          style: primaryTextStyle,
        )
      ],
    );
  }

  Widget two() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10), // Border radius 15
          child: Image(
            image: AssetImage('asset/gg.png'),
            width: 70,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              header(),
              SizedBox(height: 15),
              inputEmail(),
              inputPassword(),
              option(),
              two(),
              submitButton(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
