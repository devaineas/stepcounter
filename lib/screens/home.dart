import 'package:flutter/material.dart';
import 'package:stepcounter/styles/text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = "Jenifer";
  String date = "Mon, 10 July 2023";
  String goal = "8000";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "Hello, $name",
                    style: TextStyles.w600,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    date,
                    style: TextStyles.w400,
                  ),
                ],
              ),
              Container(
                color: const Color.fromRGBO(255, 255, 255, 0.9),
                child: Row(children: [
                  const Text("Goal: ", style: TextStyles.w400),
                  Text(
                    goal,
                    style: TextStyles.w500,
                  ),
                  const Text(
                    " Steps",
                    style: TextStyles.w400,
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
