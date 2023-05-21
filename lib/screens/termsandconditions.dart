import 'package:careers_app/helpers/constants.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Privacy policy for recruitment using Teamtailor',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, color: Constants.primaryColor),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'The service for handling recruitments and simplifying the hiring process (the "Service") is powered by Teamtailor on behalf of Car & Classic ("Controller" “we” “us” etc.). It is important that the persons using the Service ("Users”) feel safe with, and are informed about, how we handle User personal data in the recruitment process. We strive to maintain the highest possible standard regarding the protection of personal data. We process, manage, use, and protect User Personal Data in accordance with this Privacy Policy ("Privacy Policy").',
          style: TextStyle(
            color: Constants.primaryColor,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          '1. General',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 24, color: Constants.primaryColor),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'We are the controller in accordance with current privacy legislations. The Users’ personal data is processed with the purpose of managing and facilitating recruitment of employees to our business',
          style: TextStyle(
            color: Constants.primaryColor,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          '2. Collection of personal data',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 24, color: Constants.primaryColor),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'We are the controller in accordance with current privacy legislations. The Users’ personal data is processed with the purpose of managing and facilitating recruitment of employees to our business',
          style: TextStyle(
            color: Constants.primaryColor,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          '3. Security',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 24, color: Constants.primaryColor),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'We are the controller in accordance with current privacy legislations. The Users’ personal data is processed with the purpose of managing and facilitating recruitment of employees to our business',
          style: TextStyle(
            color: Constants.primaryColor,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
