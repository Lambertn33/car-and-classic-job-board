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
    void navigateToOpeningsPage() {
      Navigator.pushNamed(context, '/openings');
    }
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
              Text(
                'We are waiting for your application',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Constants.lightColor,
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Car & Classic is trusted by millions of people to buy and sell specialist vehicles'
                'Unashamedly obsessed with classic cars, bikes, trucks and everything in between, we want to create a place for enthusiasts to engage with their passion.',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Constants.lightColor, fontSize: 15),
              ),
              const SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: navigateToOpeningsPage,
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Constants.lightColor,
                    borderRadius: BorderRadius.circular(50),
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
