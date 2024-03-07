import 'package:flutter/material.dart';
import 'package:multi_store/views/buyers/nav_screens/home/widgets/welcome_text.dart';
import 'package:multi_store/views/buyers/nav_screens/search/widget/search_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: mediaQuery.padding.top + kToolbarHeight,
            left: 25,
            right: 25,
          ),
          child: Column(
            children: [
              WelcomeText(),
              SizedBox(
                height: 16,
              ),
              SearchInput(),
            ],
          ),
        ),
        Container(
          height: 140,
          margin: EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.yellow.shade700,
            borderRadius: BorderRadius.circular(10),
          ),
          child: PageView(
            children: [
              Text('banner 1'),
              Text('banner 2'),
              Text('banner 3'),
            ],
          ),
        )
      ],
    );
  }
}
