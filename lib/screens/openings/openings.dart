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
  final TextEditingController _searchKeyController = TextEditingController();
  late String enteredKeyToSearch;
  List<Opening> openingsList = [];

  void getOpenings() {
    openingsList = OpeningsServices.getOpeningsList();
  }

  @override
  void initState() {
    super.initState();
    getOpenings();
    _searchKeyController.addListener(searchOpening);
  }

  void searchOpening() {
    String searchKey = _searchKeyController.value.text;
    List<Opening> searchResults = openingsList
        .where((opening) =>
            opening.title.toLowerCase().contains(searchKey.toLowerCase()))
        .toList();
    setState(() {
      openingsList = (searchResults.isNotEmpty && searchKey.isNotEmpty)
          ? searchResults
          : OpeningsServices.getOpeningsList();
    });
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
                        child: Icon(
                          Icons.arrow_back,
                          color: Constants.lightColor,
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
                'Our current openings',
                style: TextStyle(fontSize: 26, color: Constants.primaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: _searchKeyController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    labelText: 'Search opening...',
                    labelStyle: TextStyle(color: Constants.primaryColor.withOpacity(0.4)),
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
