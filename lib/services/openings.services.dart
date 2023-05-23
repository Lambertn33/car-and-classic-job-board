import 'package:careers_app/models/opening.model.dart';
import 'package:uuid/uuid.dart';

class OpeningsServices {
  static const uuid = Uuid();
  static getOpeningsList() {
    List<Opening> currentOpenings = [
      Opening(
          id: uuid.v4(),
          title: 'Full stack Laravel developer',
          description: 'Are you ready to build applications that will leave'
              'As our Full Stack Laravel Developer, you will be designing and implementing top-tier applications that will make a lasting impression on our platform.'
              'You will need a deep understanding of both front-end and back-end development to create applications that are truly exceptional.'
              'With your pixel-perfect approach and expertise in building high-scale websites and marketplaces, you'
              'll be able to build applications, products and services that push the limits of what is possible here at Facebook, Worlds’s largest social media.'
              'So put the pedal to the metal , apply now and let'
              's get in the race!',
          location: 'Fully Remote 100%'),
      Opening(
          id: uuid.v4(),
          title: 'Angular & Node.js developer',
          description: 'Are you ready to build applications that will leave'
              'As our Angular & Node.js developer, you will be designing and implementing top-tier applications that will make a lasting impression on our platform.'
              'You will need a deep understanding of both front-end and back-end development to create applications that are truly exceptional.'
              'With your pixel-perfect approach and expertise in building high-scale websites and marketplaces, you'
              'll be able to build applications, products and services that push the limits of what is possible here at Facebook, Worlds’s largest social media.'
              'So put the pedal to the metal , apply now and let'
              's get in the race!',
          location: 'Fully Remote 100%'),
      Opening(
          id: uuid.v4(),
          title: 'Flutter developer',
          description: 'Are you ready to build applications that will leave'
              'As our Flutter developer, you will be designing and implementing top-tier applications that will make a lasting impression on our platform.'
              'You will need a deep understanding of both front-end and back-end development to create applications that are truly exceptional.'
              'With your pixel-perfect approach and expertise in building high-scale websites and marketplaces, you'
              'll be able to build applications, products and services that push the limits of what is possible here at Facebook, Worlds’s largest social media.'
              'So put the pedal to the metal , apply now and let'
              's get in the race!',
          location: 'Fully Remote 100%'),
      Opening(
          id: uuid.v4(),
          title: 'AWS Engineer',
          description: 'Are you ready to build applications that will leave'
              'As our AWS Engineer, you will be designing and implementing top-tier applications that will make a lasting impression on our platform.'
              'You will need a deep understanding of both front-end and back-end development to create applications that are truly exceptional.'
              'With your pixel-perfect approach and expertise in building high-scale websites and marketplaces, you'
              'll be able to build applications, products and services that push the limits of what is possible here at Facebook, Worlds’s largest social media.'
              'So put the pedal to the metal , apply now and let'
              's get in the race!',
          location: 'Fully Remote 100%'),
      Opening(
          id: uuid.v4(),
          title: 'Devops Engineer',
          description: 'Are you ready to build applications that will leave'
              'As our Devops Engineer, you will be designing and implementing top-tier applications that will make a lasting impression on our platform.'
              'You will need a deep understanding of both front-end and back-end development to create applications that are truly exceptional.'
              'With your pixel-perfect approach and expertise in building high-scale websites and marketplaces, you'
              'll be able to build applications, products and services that push the limits of what is possible here at Facebook, Worlds’s largest social media.'
              'So put the pedal to the metal , apply now and let'
              's get in the race!',
          location: 'Fully Remote 100%'),
    ];
    return currentOpenings;
  }
}
