import 'package:flutter/material.dart';
import 'package:flutter_cus_tabs/tabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Header(),
              SizedBox(
                height: 8,
              ),
              Tabs(),
            ],
          ),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        "Shopping",
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
