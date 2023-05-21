import 'package:careers_app/helpers/constants.dart';
import 'package:careers_app/models/opening.model.dart';
import 'package:flutter/material.dart';

class OpeningDetails extends StatefulWidget {
  final Opening opening;
  const OpeningDetails({required this.opening, super.key});

  @override
  State<OpeningDetails> createState() => _OpeningDetailsState();
}

class _OpeningDetailsState extends State<OpeningDetails> {
  @override
  Widget build(BuildContext context) {
    Opening opening = widget.opening;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Banner
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      opening.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      opening.location,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 45,
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Constants.primaryColor,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'BACK',
                              style: TextStyle(
                                  fontSize: 20, color: Constants.primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Description
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About you',
                        style: TextStyle(
                            fontSize: 24, color: Constants.primaryColor),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        opening.description,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/apply', arguments: opening);
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Constants.primaryColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Apply for this job',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'We usually respond within a week',
                        style: TextStyle(color: Constants.primaryColor),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
