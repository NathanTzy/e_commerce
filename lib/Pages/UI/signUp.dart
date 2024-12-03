part of '../pages.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  Widget inputEmail() {
    return Container(
      margin: EdgeInsets.only(top: 10),
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

  Widget inputName() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
          SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Your Full Name',
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

  Widget inputUsername() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Username',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
          SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Your Username',
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

  Widget inputPassword() {
    return Container(
      margin: EdgeInsets.only(top: 10),
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

  Widget submitButton() {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
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
            fontWeight: medium,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Register',
                style:
                    primaryTextStyle.copyWith(fontSize: 30, fontWeight: bold),
              ),
              SizedBox(height: 2),
              Text(
                'Sign Up to Enter',
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
          'Or register with',
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

  Widget footer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/signIn');
          },
          child: Text(
            'Already have account?',
            style: subtitleTextStyle.copyWith(color: Colors.white),
          ),
        )
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
              inputName(),
              inputUsername(),
              inputEmail(),
              inputPassword(),
              submitButton(),
              option(),
              two(),
              SizedBox(
                height: 20,
              ),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
