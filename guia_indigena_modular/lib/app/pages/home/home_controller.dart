import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      Text(' Could not launch $command');
    }
  }
}
