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
              'our petrol heads and classic car enthusiasts bidding for more?'
              'As our Full Stack Laravel Developer, you will be designing and implementing top-tier applications that will make a lasting impression on our platform.'
              'You will need a deep understanding of both front-end and back-end development to create applications that are truly exceptional.'
              'With your pixel-perfect approach and expertise in building high-scale websites and marketplaces, you'
              'll be able to build applications, products and services that push the limits of what is possible here at Car & Classic, Europe’s largest classic vehicle marketplace.'
              'So put the pedal to the metal , apply now and let'
              's get in the race!',
          location: 'Fully Remote 100%'),
      Opening(
          id: uuid.v4(),
          title: 'Freelance photographers',
          description:
              'You will be passionate about classic and specialist vehicles and through that passion you will be able to demonstrate excellent technical knowledge to produce outstanding images for our platform.'
              'You will be confident enough to self-organise and to work strongly from your own initiative. You will be happy to speak to people from all corners of the classic and specialist car world, from home-based enthusiasts to specialist dealers with stock valued at millions. And, on that note, you will be as engaged and as invested in shooting a Morris Minor as you would be a Merak.'
              'You will be a skilled photographer, with the ability to demonstrate this with past work in the automotive field; regrettably, we cannot consider photographers without an automotive portfolio. You’ll have a consistent and thoughtful approach to your work and a very good understanding of the principles of vehicle photography, able to deliver accurate and informative images. This will rely also on your vehicle knowledge, as you’ll be expected to photograph all the important details of a particular vehicle.'
              'Above all, however, you’ll be someone looking to join a great team of enthusiasts who are shaking up the classic and specialist car market. Car & Classic is a household name now, and we want people to come on this exciting journey with us.',
          location: 'Freelace - Le Mans'),
      Opening(
          id: uuid.v4(),
          title: 'Freelance photographers',
          description:
              'You will be passionate about classic and specialist vehicles and through that passion you will be able to demonstrate excellent technical knowledge to produce outstanding images for our platform.'
              'You will be confident enough to self-organise and to work strongly from your own initiative. You will be happy to speak to people from all corners of the classic and specialist car world, from home-based enthusiasts to specialist dealers with stock valued at millions. And, on that note, you will be as engaged and as invested in shooting a Morris Minor as you would be a Merak.'
              'You will be a skilled photographer, with the ability to demonstrate this with past work in the automotive field; regrettably, we cannot consider photographers without an automotive portfolio. You’ll have a consistent and thoughtful approach to your work and a very good understanding of the principles of vehicle photography, able to deliver accurate and informative images. This will rely also on your vehicle knowledge, as you’ll be expected to photograph all the important details of a particular vehicle.'
              'Above all, however, you’ll be someone looking to join a great team of enthusiasts who are shaking up the classic and specialist car market. Car & Classic is a household name now, and we want people to come on this exciting journey with us.',
          location: 'Freelance - Dijon'),
      Opening(
          id: uuid.v4(),
          title: 'Freelance photographers',
          description:
              'You will be passionate about classic and specialist vehicles and through that passion you will be able to demonstrate excellent technical knowledge to produce outstanding images for our platform.'
              'You will be confident enough to self-organise and to work strongly from your own initiative. You will be happy to speak to people from all corners of the classic and specialist car world, from home-based enthusiasts to specialist dealers with stock valued at millions. And, on that note, you will be as engaged and as invested in shooting a Morris Minor as you would be a Merak.'
              'You will be a skilled photographer, with the ability to demonstrate this with past work in the automotive field; regrettably, we cannot consider photographers without an automotive portfolio. You’ll have a consistent and thoughtful approach to your work and a very good understanding of the principles of vehicle photography, able to deliver accurate and informative images. This will rely also on your vehicle knowledge, as you’ll be expected to photograph all the important details of a particular vehicle.'
              'Above all, however, you’ll be someone looking to join a great team of enthusiasts who are shaking up the classic and specialist car market. Car & Classic is a household name now, and we want people to come on this exciting journey with us.',
          location: 'Freelance - Strasbourg'),
      Opening(
          id: uuid.v4(),
          title: 'Freelance photographers',
          description:
              'You will be passionate about classic and specialist vehicles and through that passion you will be able to demonstrate excellent technical knowledge to produce outstanding images for our platform.'
              'You will be confident enough to self-organise and to work strongly from your own initiative. You will be happy to speak to people from all corners of the classic and specialist car world, from home-based enthusiasts to specialist dealers with stock valued at millions. And, on that note, you will be as engaged and as invested in shooting a Morris Minor as you would be a Merak.'
              'You will be a skilled photographer, with the ability to demonstrate this with past work in the automotive field; regrettably, we cannot consider photographers without an automotive portfolio. You’ll have a consistent and thoughtful approach to your work and a very good understanding of the principles of vehicle photography, able to deliver accurate and informative images. This will rely also on your vehicle knowledge, as you’ll be expected to photograph all the important details of a particular vehicle.'
              'Above all, however, you’ll be someone looking to join a great team of enthusiasts who are shaking up the classic and specialist car market. Car & Classic is a household name now, and we want people to come on this exciting journey with us.',
          location: 'Freelance - Nantes'),
      Opening(
          id: uuid.v4(),
          title: 'Freelance photographers',
          description:
              'You will be passionate about classic and specialist vehicles and through that passion you will be able to demonstrate excellent technical knowledge to produce outstanding images for our platform.'
              'You will be confident enough to self-organise and to work strongly from your own initiative. You will be happy to speak to people from all corners of the classic and specialist car world, from home-based enthusiasts to specialist dealers with stock valued at millions. And, on that note, you will be as engaged and as invested in shooting a Morris Minor as you would be a Merak.'
              'You will be a skilled photographer, with the ability to demonstrate this with past work in the automotive field; regrettably, we cannot consider photographers without an automotive portfolio. You’ll have a consistent and thoughtful approach to your work and a very good understanding of the principles of vehicle photography, able to deliver accurate and informative images. This will rely also on your vehicle knowledge, as you’ll be expected to photograph all the important details of a particular vehicle.'
              'Above all, however, you’ll be someone looking to join a great team of enthusiasts who are shaking up the classic and specialist car market. Car & Classic is a household name now, and we want people to come on this exciting journey with us.',
          location: 'Freelance - Bourgers'),
    ];
    return currentOpenings;
  }
}
