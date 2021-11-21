import 'package:flutter/material.dart';
import 'package:montcha/shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 35,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 40,
                          color: kGreyShadowColor.withOpacity(0.15),
                        ),
                      ],
                    ),
                    child: TextField(
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                        ),
                        hintText: 'Cari nama gunung',
                        hintStyle: greyTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(defaultRadius),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Image.asset(
                            'assets/Icon - Search.png',
                            width: 16,
                          ),
                        ),
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 46,
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Image.asset(
                            'assets/Icon - Filter.png',
                            width: 16,
                          ),
                        ),
                        suffixIconConstraints: const BoxConstraints(
                          minWidth: 46,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 34),
            RichText(
              text: TextSpan(
                text: '14',
                style: blueTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
