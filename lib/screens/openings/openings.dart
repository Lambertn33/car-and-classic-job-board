import 'package:careers_app/helpers/constants.dart';
import 'package:careers_app/models/opening.model.dart';
import 'package:careers_app/services/openings.services.dart';
import 'package:careers_app/widgets/openingCardWidget.dart';
import 'package:flutter/material.dart';

class OpeningsListPage extends StatefulWidget {
  const OpeningsListPage({super.key});

  @override
  State<OpeningsListPage> createState() => _OpeningsListPageState();
}

class _OpeningsListPageState extends State<OpeningsListPage> {
  List<Opening> openingsList = [];

  void getOpenings() {
    openingsList = OpeningsServices.getOpeningsList();
  }

  @override
  void initState() {
    super.initState();
    getOpenings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Constants.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0).withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Current openings',
                style: TextStyle(fontSize: 26, color: Constants.primaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    labelText: 'Search opening...',
                    labelStyle: TextStyle(color: Constants.primaryColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              for (var i = 0; i < openingsList.length; i++)
                OpeningCardWidget(
                  openingDetails: openingsList[i],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
