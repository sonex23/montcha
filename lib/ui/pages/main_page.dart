import 'package:flutter/material.dart';
import 'package:montcha/shared/theme.dart';
import 'package:montcha/ui/pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteDisable,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              const HomePage(),
              Positioned.fill(
                bottom: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: kWhiteDisable,
                      boxShadow: [
                        BoxShadow(
                          color: kGreyColor.withOpacity(0.5),
                          blurRadius: 40,
                          spreadRadius: 0,
                          offset: const Offset(0, -4),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Icon - Home.png',
                              width: 20,
                              color: kPrimaryColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kPrimaryColor,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Icon - Search.png',
                              width: 20,
                              color: kGreyColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Icon - Hiking Team.png',
                              width: 20,
                              color: kGreyColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/Icon - Profile.png',
                              width: 20,
                              color: kGreyColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
