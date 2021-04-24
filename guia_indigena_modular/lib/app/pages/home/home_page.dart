import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guia_indigena_modular/app/pages/home/home_controller.dart';
import 'package:guia_indigena_modular/app/shared/theme/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: BackGroundColor,
        appBar: AppBar(
          backgroundColor: RedColor.withOpacity(0.5),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.info_outline,
                  size: 40,
                  color: TextColor,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/info');
                }),
          ],
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/backGround.jpg',
              fit: BoxFit.cover,
              color: RedColor.withOpacity(0.83),
              colorBlendMode: BlendMode.dstOut,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 2,
                  child: SvgPicture.asset('assets/images/logo.svg'),
                ),
                Flexible(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      controller.customLaunch(
                          "https://portal.ifrn.edu.br/arquivos/guia-cultural-indigena-do-rio-grande-do-norte");
                    },
                    child: Container(
                      width: size.width * 0.80,
                      height: size.height * 0.22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: RedColor.withOpacity(0.4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 1,
                            child: SvgPicture.asset(
                              'assets/images/Guia.svg',
                              width: size.width * 0.13,
                              height: size.width * 0.13,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              'Guia Online',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: TextColor,
                                  fontSize: 14,
                                  fontFamily: 'Mont'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/patrimony');
                        },
                        child: Container(
                          width: size.width * 0.35,
                          height: size.height * 0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: RedColor.withOpacity(0.4),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                flex: 1,
                                child: SvgPicture.asset(
                                  'assets/images/lugar.svg',
                                  width: size.width * 0.13,
                                  height: size.width * 0.13,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Text(
                                  'Lugares de memória',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: TextColor,
                                      fontSize: 14,
                                      fontFamily: 'Mont'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/village');
                        },
                        child: Container(
                          width: size.width * 0.35,
                          height: size.height * 0.22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: RedColor.withOpacity(0.4),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                flex: 1,
                                child: SvgPicture.asset(
                                  'assets/images/aldeias.svg',
                                  width: size.width * 0.13,
                                  height: size.width * 0.13,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Text(
                                  'Aldeias',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: TextColor,
                                      fontSize: 14,
                                      fontFamily: 'Mont'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
