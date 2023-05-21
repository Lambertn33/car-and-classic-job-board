import 'package:careers_app/helpers/constants.dart';
import 'package:careers_app/models/candidate.mode.dart';
import 'package:flutter/material.dart';

class ApplicationSuccess extends StatefulWidget {
  final Candidate candidate;
  const ApplicationSuccess({required this.candidate, super.key});

  @override
  State<ApplicationSuccess> createState() => _ApplicationSuccessState();
}

class _ApplicationSuccessState extends State<ApplicationSuccess> {
  @override
  Widget build(BuildContext context) {
    Candidate appliedCandidate = widget.candidate;
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(children: [
            Text(
              'Thank you ${appliedCandidate.names}',
              style: TextStyle(color: Constants.lightColor, fontSize: 28),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Dear ${appliedCandidate.names}, Thank for applying for the position of ${appliedCandidate.appliedOpening.title}. Our team will review your application and get back to you within a week.'
              ' We are an open and transparent company.',
              style: TextStyle(color: Constants.lightColor, fontSize: 16),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(85),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/tom.jpg'),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Tom Conway',
              style: TextStyle(color: Constants.lightColor, fontSize: 28),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Talent Acqusition manager at Car and classic',
              style: TextStyle(color: Constants.lightColor, fontSize: 14),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width /2,
                height: 60,
                decoration: BoxDecoration(
                    color: Constants.lightColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(color: Constants.primaryColor, fontSize: 23),
                    ),
                    Icon(Icons.home, color: Constants.primaryColor, size: 25,)
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
