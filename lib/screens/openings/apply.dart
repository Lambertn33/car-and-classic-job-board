import 'package:careers_app/helpers/constants.dart';
import 'package:careers_app/models/opening.model.dart';
import 'package:careers_app/widgets/textFormWidget.dart';
import 'package:flutter/material.dart';

class OpeningApply extends StatefulWidget {
  final Opening openingToApply;
  const OpeningApply({required this.openingToApply, super.key});

  @override
  State<OpeningApply> createState() => _OpeningApplyState();
}

class _OpeningApplyState extends State<OpeningApply> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Opening openingToApply = widget.openingToApply;
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                          color: Constants.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Application for ${openingToApply.title}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      openingToApply.location,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.location_city,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Work with Europe s largest classics marketplace',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Form
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormFieldWidget(
                            maxLines: 1,
                            hintText: 'years of experience',
                            keyboardType: TextInputType.number,
                            errorMessage: 'please enter some value'),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormFieldWidget(
                            maxLines: 1,
                            hintText: 'link to portfolio',
                            keyboardType: TextInputType.url,
                            errorMessage: 'please enter some value'),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormFieldWidget(
                            maxLines: 1,
                            hintText: 'email address',
                            keyboardType: TextInputType.emailAddress,
                            errorMessage: 'please enter some value'),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormFieldWidget(
                            maxLines: 4,
                            hintText: 'cover letter',
                            keyboardType: TextInputType.text,
                            errorMessage: 'please enter some value'),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  color: Constants.primaryColor, fontSize: 23),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
                //End Form
              ],
            ),
          ),
        ),
      ),
    );
  }
}
