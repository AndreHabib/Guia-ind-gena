import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guia_indigena_modular/app/pages/home/home_controller.dart';
import 'package:guia_indigena_modular/app/shared/theme/colors.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final homeController = Modular.get<HomeController>();
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
            'Informações',
            style:
                TextStyle(fontFamily: 'Mont', fontSize: 18, color: TextColor),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                  flex: 0,
                  child: Column(
                    children: [
                      Text(
                        'Desenvolvido por:',
                        style: TextStyle(
                            fontFamily: 'Mont', fontSize: 13, color: TextColor),
                      ),
                      Text(
                        'Projeto Guia Indigena UFRN',
                        style: TextStyle(
                            fontFamily: 'Mont', fontSize: 18, color: TextColor),
                      ),
                    ],
                  )),
              Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            homeController
                                .customLaunch('mailto:proextcirs@gmail.com');
                          },
                          //color: BackGroundColor,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: new Icon(
                                    const IconData(0xe902,
                                        fontFamily: 'IconsCustom'),
                                    color: IconColor,
                                    size: 35,
                                  )),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'proextcirs@gmail.com',
                                  style: TextStyle(
                                      fontFamily: 'Mont',
                                      fontSize: 16,
                                      color: TextColor),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: TextColor,
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            homeController.customLaunch(
                                'https://www.facebook.com/patrimonio.RN');
                          },
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: new Icon(
                                  const IconData(0xea90,
                                      fontFamily: 'IconsCustom'),
                                  color: IconColor,
                                  size: 35,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'patrimonio.RN',
                                  style: TextStyle(
                                      fontFamily: 'Mont',
                                      fontSize: 16,
                                      color: TextColor),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: TextColor,
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              homeController.customLaunch('tel:+558433422240');
                            },
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: new Icon(
                                      const IconData(0xe942,
                                          fontFamily: 'IconsCustom'),
                                      color: IconColor,
                                      size: 35,
                                    )),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    '+55 84 3342-2240',
                                    style: TextStyle(
                                        fontFamily: 'Mont',
                                        fontSize: 16,
                                        color: TextColor),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: TextColor,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Museu Virtual',
                            style: TextStyle(
                                fontFamily: 'Mont',
                                fontSize: 18,
                                color: TextColor),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 0,
                          child: InkWell(
                            onTap: () {
                              homeController.customLaunch(
                                  "http://museutronco.cchla.ufrn.br/");
                            },
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: new Icon(
                                    const IconData(0xe901,
                                        fontFamily: 'IconsCustom'),
                                    color: IconColor,
                                    size: 35,
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    'museutronco.cchla.ufrn.br',
                                    style: TextStyle(
                                        fontFamily: 'Mont',
                                        fontSize: 16,
                                        color: TextColor),
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  )),
              Flexible(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    homeController.customLaunch(
                        "https://firebasestorage.googleapis.com/v0/b/guia-244803.appspot.com/o/Colaboradores.pdf?alt=media&token=934ee728-0aca-4c87-b5ed-8f21c75543b6");
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.82,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: RedColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.transparent,
                            )),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Colaboradores',
                            style: TextStyle(
                                fontFamily: 'Mont',
                                fontSize: 18,
                                color: TextColor),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            const IconData(0xe900, fontFamily: 'IconsCustom'),
                            color: TextColor,
                            size: 22,
                          ),
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
