import 'package:flutter/material.dart';
import 'package:guia_indigena_modular/app/shared/theme/colors.dart';

class PatrimonyMapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: BackGroundColor,
        appBar: AppBar(
          backgroundColor: RedColor.withOpacity(0.5),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: TextColor,
              size: 35,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Lugares de memória',
            style:
                TextStyle(fontFamily: 'Mont', fontSize: 18, color: TextColor),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Image(
              image: AssetImage('assets/images/MAPA-Patrimonio.png'),
              width: size.width * 1,
              height: size.height * 1,
            ),
          ],
        ),
      ),
    );
  }
}
