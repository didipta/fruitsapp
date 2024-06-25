import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'OrderStatusSection.dart';
import 'SettingsSection.dart';
import 'UserProfileSection.dart';


class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserProfileSection(),
            OrderStatusSection(),
            SettingsSection(),

          ],
        ),
      ),
    );
  }
}
