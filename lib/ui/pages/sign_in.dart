import 'package:flutter/material.dart';
import 'package:montcha/shared/theme.dart';
import 'package:montcha/ui/widgets/custom_text_form_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController =
      TextEditingController(text: "");

  final TextEditingController _passwordController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                width: double.infinity,
                height: 210,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/banner.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              Text(
                'Sign in with your account',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account yet? ',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: blueTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kGreyColor,
                      ),
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/google-icon 1.png',
                          width: 17,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sign in with Google',
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'or',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
              const SizedBox(height: 10),
              Form(
                key: _signUpFormKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Column(
                    children: [
                      CustomTextFormField(
                        title: 'Email',
                        controller: _emailController,
                        inputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        controller: _passwordController,
                        title: 'Password',
                        isPassword: true,
                      ),
                      const SizedBox(height: 34),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/main');
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(defaultRadius),
                          ),
                          child: Center(
                            child: Text(
                              'Sign into your account',
                              style: whiteTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: medium,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 74),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
