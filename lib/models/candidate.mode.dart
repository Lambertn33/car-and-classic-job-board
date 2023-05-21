import 'package:careers_app/models/opening.model.dart';

class Candidate {
  final String names;
  final String email;
  final int yearsOfExperience;
  final String portfolio;
  final String coverLetter;
  final Opening appliedOpening;

  Candidate(
      {required this.names,
      required this.email,
      required this.coverLetter,
      required this.portfolio,
      required this.yearsOfExperience,
      required this.appliedOpening
      });
}
