import 'package:careers_app/helpers/constants.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/logo.png'),
              ),
              const Text(
                'We are waiting for your CV',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Car & Classic is trusted by millions of people to buy and sell specialist vehicles'
                'Unashamedly obsessed with classic cars, bikes, trucks and everything in between, we want to create a place for enthusiasts to engage with their passion.',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              const SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'View openings',
                        style: TextStyle(
                            fontSize: 24,
                            color: Constants.primaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Constants.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
