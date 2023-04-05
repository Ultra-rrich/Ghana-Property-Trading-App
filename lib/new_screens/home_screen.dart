import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gpt_app/components/bottom_buttons.dart';
import 'package:gpt_app/components/categories.dart';
import 'package:gpt_app/components/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: const [
                CustomAppBar(),
                Categories(),
                // Houses(),
              ],
            ),
            const BottomButtons(),
          ],
        ),
      ),
    );
  }
}
