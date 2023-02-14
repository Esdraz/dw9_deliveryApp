import 'package:dw9_delivery_app/app/core/ui/helpers/size_extensions.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff140E0e),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: ColoredBox(
        color: const Color(0xff140E0e),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.screenWidth,
                child: Image.asset(
                  'assets/images/lanche.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: context.percentHeight(.10),
                  ),
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(
                    height: 60,
                  ),
                  DeliveryButton(
                      width: context.percentWidth(.6),
                      label: 'ACESSAR',
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed('/home');
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
