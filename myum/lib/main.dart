import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'customcard.dart';

void main() {
  runApp(const MyUm());
}

class MyUm extends StatelessWidget {
  const MyUm({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyUmApp(),
    );
  }
}

class MyUmApp extends StatefulWidget {
  const MyUmApp({super.key});

  @override
  State<MyUmApp> createState() => _MyUmAppState();
}

class _MyUmAppState extends State<MyUmApp> {

  int currentIndex = 0;

  var imgs = [
    "https://news.miami.edu/_assets/images-stories/2025/03/foods-that-prevent-cancer-and-heart-disease-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/field-hockey-video-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/first-year-admitted-student-program-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/fec-week-hero-790x527.jpg"
  ];

  var titles = [
    "Foods to fortify",
    "A winning formula",
    "Global start for University students",
    "Cuban student organization celebrates a Week of Cuban Culture"
  ];

  var summaries = [
    "Experts in nutrition science from across the University of Miami offer their thoughts on some of the best foods to help us ward off chronic disease.",
    "More than just a team, the University of Miami's Field Hockey Club fosters camaraderie and teamwork through travel, competition, and a shared passion.",
    "The Start Abroad program offered to spring-admitted students at the University of Miami provides a unique and exciting first-year international experience.",
    "The week’s events, organized by the Federación de Estudiantes Cubanos, includes a movie screening of “Hijos de la Diaspora” that explores the lives of the children of Cuban exiles."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // APPBAR
      appBar: AppBar(
        title: Text("MyUM"),
        backgroundColor: Colors.deepOrange,
      ),


      // BODY
      body: Center(
        child: <Widget>[
          Dashboard(),
          ListView(
            children: [
              CustomCard(imgs[0], titles[0], summaries[0]),
              CustomCard(imgs[1], titles[1], summaries[1]),
              CustomCard(imgs[2], titles[2], summaries[2]),
              CustomCard(imgs[3], titles[3], summaries[3])
            ],
          ),
          CustomCard("https://news.miami.edu/_assets/images-stories/2024/10/centennial-preview-logo-orange-embed-940x529.png", "This is the title", "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem IpsumLorem Ipsum Lorem Ipsum"),
          CustomCard("https://news.miami.edu/_assets/images-stories/2024/10/centennial-preview-logo-orange-embed-940x529.png", "This is the title", "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem IpsumLorem Ipsum Lorem Ipsum")
        ][currentIndex]
      ),


      // NAV BAR
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: <Widget>[
          NavigationDestination(
            icon: Icon(Icons.dashboard), 
            label: "Dashboard"
          ),
          NavigationDestination(
            icon: Icon(Icons.pages), 
            label: "Page 1"
          ),
          NavigationDestination(
            icon: Icon(Icons.pages), 
            label: "Page 2"
          ),
          NavigationDestination(
            icon: Icon(Icons.pages), 
            label: "Page 3"
          ),
        ],
        selectedIndex: currentIndex,
      ),
    );
  }
}
