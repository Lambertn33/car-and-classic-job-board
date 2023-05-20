import 'package:careers_app/helpers/constants.dart';
import 'package:careers_app/models/opening.model.dart';
import 'package:flutter/material.dart';

class OpeningCardWidget extends StatefulWidget {
  final Opening openingDetails;
  const OpeningCardWidget({required this.openingDetails, super.key});

  @override
  State<OpeningCardWidget> createState() => _OpeningCardWidgetState();
}

class _OpeningCardWidgetState extends State<OpeningCardWidget> {
  @override
  Widget build(BuildContext context) {
    Opening opening = widget.openingDetails; 
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Constants.primaryColor,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              opening.title,
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
            Text(
              opening.location,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            InkWell(
              child: Container(
                height: 50,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'APPLY',
                  style: TextStyle(fontSize: 20, color: Constants.primaryColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
