import 'package:careers_app/helpers/constants.dart';
import 'package:careers_app/models/candidate.mode.dart';
import 'package:careers_app/models/opening.model.dart';
import 'package:careers_app/screens/termsandconditions.dart';
import 'package:flutter/material.dart';

class OpeningApply extends StatefulWidget {
  final Opening openingToApply;
  const OpeningApply({required this.openingToApply, super.key});

  @override
  State<OpeningApply> createState() => _OpeningApplyState();
}

class _OpeningApplyState extends State<OpeningApply> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _yearsOfExperienceController =
      TextEditingController();
  final TextEditingController _portfolioUrlController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _namesController = TextEditingController();
  final TextEditingController _coverLetterController = TextEditingController();
  @override
  void dispose() {
    _coverLetterController.dispose();
    _emailController.dispose();
    _namesController.dispose();
    _portfolioUrlController.dispose();
    _yearsOfExperienceController.dispose();
    super.dispose();
  }

  void submitApplication() {
    if (_formKey.currentState!.validate()) {
      Candidate newCandidate = Candidate(
          names: _namesController.text,
          email: _emailController.text,
          coverLetter: _coverLetterController.text,
          portfolio: _portfolioUrlController.text,
          yearsOfExperience: int.parse(_yearsOfExperienceController.text),
          appliedOpening: widget.openingToApply);
          Navigator.pushNamed(context, '/thankYou', arguments: newCandidate);
    }
  }

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
                        color: Constants.lightColor,
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
                  style: TextStyle(
                    fontSize: 28,
                    color: Constants.lightColor,
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
                      style: TextStyle(color: Constants.lightColor),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.location_city,
                      color: Constants.lightColor,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Work with Europe s largest classics marketplace',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Constants.lightColor,
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
                        // years of experience
                        TextFormField(
                          controller: _yearsOfExperienceController,
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color:
                                      Constants.primaryColor.withOpacity(0.4),
                                  fontSize: 14),
                              hintText: 'years of experience',
                              filled: true,
                              fillColor: Constants.lightColor,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              errorStyle: const TextStyle(fontSize: 16)),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'provide the years of experience';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // link to portfolio
                        TextFormField(
                          controller: _portfolioUrlController,
                          maxLines: 1,
                          keyboardType: TextInputType.url,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color:
                                      Constants.primaryColor.withOpacity(0.4),
                                  fontSize: 14),
                              hintText: 'link to your portfolio',
                              filled: true,
                              fillColor: Constants.lightColor,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              errorStyle: const TextStyle(fontSize: 16)),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'provide the link';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // names
                        TextFormField(
                          controller: _namesController,
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color:
                                      Constants.primaryColor.withOpacity(0.4),
                                  fontSize: 14),
                              hintText: 'your names',
                              filled: true,
                              fillColor: Constants.lightColor,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              errorStyle: const TextStyle(fontSize: 16)),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'provide your names';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // email field
                        TextFormField(
                          controller: _emailController,
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color:
                                      Constants.primaryColor.withOpacity(0.4),
                                  fontSize: 14),
                              hintText: 'email address',
                              filled: true,
                              fillColor: Constants.lightColor,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              errorStyle: const TextStyle(fontSize: 16)),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'provide your email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // cover letter
                        TextFormField(
                          controller: _coverLetterController,
                          maxLines: 4,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color:
                                      Constants.primaryColor.withOpacity(0.4),
                                  fontSize: 14),
                              hintText: 'cover letter',
                              filled: true,
                              fillColor: Constants.lightColor,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              errorStyle: const TextStyle(fontSize: 16)),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'provide the cover letter';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: submitApplication,
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Constants.lightColor,
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  color: Constants.primaryColor, fontSize: 23),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'by submitting, i agree to the ',
                              style: TextStyle(color: Constants.lightColor),
                            ),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 25),
                                        child: Container(
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          decoration: BoxDecoration(
                                            color: Constants.lightColor,
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20)),
                                          ),
                                          child: const SingleChildScrollView(
                                            child: TermsAndConditionsPage(),
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Text(
                                'Terms and conditions',
                                style: TextStyle(
                                    color: Constants.lightColor,
                                    decoration: TextDecoration.underline),
                              ),
                            )
                          ],
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
