import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'customcard.dart';
import 'imagegallery.dart';

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
    "https://news.miami.edu/_assets/images-stories/2025/03/fec-week-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/greenu-office-program-video-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/st-patricks-day-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/online-trafficking-of-endangered-species-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/tech-neck-hero-790x527.gif",
    "https://news.miami.edu/_assets/images-stories/2025/03/chelsea-kramer-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/jonathan-vilma-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/dust-ingestion-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/chief-rivero-retirement-hero-790x527.jpg",
    "https://news.miami.edu/life/_assets/images/images-stories/2019/04/camps-790.jpg",
    "https://news.miami.edu/frost/_assets/images/images-stories/2025/02/soulsong790x527.png"
  ];

  var titles = [
    "Foods to fortify",
    "A winning formula",
    "Global start for University students",
    "Cuban student organization celebrates a Week of Cuban Culture",
    "Championing Sustainability",
    "Born in the USA: St. Patrick’s Day",
    "Dangers that lurk beyond the wilds",
    "What is tech neck?",
    "Chelsea Kramer's entrepreneurial journey",
    "From pro bowler to broadcaster",
    "Exposing the ‘DIRT’ on dust",
    "UMPD transitions to new leadership",
    "Find summer camp opportunities for your child",
    "The soul of American song"
  ];

  var summaries = [
    "Experts in nutrition science from across the University of Miami offer their thoughts on some of the best foods to help us ward off chronic disease.",
    "More than just a team, the University of Miami's Field Hockey Club fosters camaraderie and teamwork through travel, competition, and a shared passion.",
    "The Start Abroad program offered to spring-admitted students at the University of Miami provides a unique and exciting first-year international experience.",
    "The week’s events, organized by the Federación de Estudiantes Cubanos, includes a movie screening of “Hijos de la Diaspora” that explores the lives of the children of Cuban exiles.",
    "The GreenU Office Program champions a commitment to sustainability in the office—reducing waste, conserving energy, and adopting eco-friendly practices. Join the movement.",
    "A University of Miami professor who specializes in Irish culture traces the roots of the popular holiday to Irish émigrés who fled the “Great Hunger” in their homeland to seek a new start in America.",
    "Using a new web crawler they developed, two University of Miami researchers and others conducted an extensive study on the scale and scope of the online trade of endangered species.",
    "A University of Miami doctor of physical therapy explains what it is and what we can do to alleviate its symptoms.",
    "The chief executive officer of the clothing brand Parke discussed her experiences in building a sustainable, community-driven fashion brand that thrives on organic marketing, transparency, and feedback.",
    "In a fireside chat at the University of Miami’s Cosford Cinema, former Miami Hurricanes linebacker and Super Bowl champion Jonathan Vilma shared insights on his collegiate and NFL careers and what it took to become a successful color analyst.",
    "In one of the few studies of its kind, a University of Miami doctoral student and others have documented the particle size of household dust found on children’s hands after play activities.",
    "After a 19-year career as the University of Miami’s chief of police, during which he implemented several measures that improved the department, David Rivero is stepping down, turning over the reins to veteran officer Trevor Shinn, with whom he shares a common bond.",
    "With your child’s interests and academic goals in mind, explore a list of summer camps and programs at the University this summer.",
    "A songwriting class that draws inspiration from the rich panoply of Black music helps students at the Frost School of Music expand their artistry, empathy, and understanding of American music."
  ];

  var imggal = [
    "https://news.miami.edu/frost/_assets/images/images-stories/2025/03/directorbands365x365.png",
    "https://news.miami.edu/frost/_assets/images/images-stories/2025/03/centennialartists365x365.png",
    "https://news.miami.edu/frost/_assets/images/images-stories/2025/03/raquelsofia365x365.png",
    "https://news.miami.edu/frost/_assets/images/images-stories/2025/03/musichome365x365.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // APPBAR
      appBar: AppBar(
        title: Text("MyUM"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),


      // BODY
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: <Widget>[
            Dashboard(),
            ListView(
              children: [
                Text("UM Recent News", style: TextStyle(fontSize: 32,)),
                CustomCard(imgs[0], titles[0], summaries[0]),
                CustomCard(imgs[1], titles[1], summaries[1]),
                CustomCard(imgs[2], titles[2], summaries[2]),
                CustomCard(imgs[3], titles[3], summaries[3]),
                CustomCard(imgs[4], titles[4], summaries[4]),
                CustomCard(imgs[5], titles[5], summaries[5]),
                CustomCard(imgs[6], titles[6], summaries[6])
              ],
            ),
            ListView(
              children: [
                Text("UM Earlier News", style: TextStyle(fontSize: 32,)),
                CustomCard(imgs[7], titles[7], summaries[7]),
                CustomCard(imgs[8], titles[8], summaries[8]),
                CustomCard(imgs[9], titles[9], summaries[9]),
                CustomCard(imgs[10], titles[10], summaries[10]),
                CustomCard(imgs[11], titles[11], summaries[11]),
                CustomCard(imgs[12], titles[12], summaries[12]),
                CustomCard(imgs[13], titles[13], summaries[13])
              ],
            ),
            ListView(
              children: [
                Text("Frost School of Music Image Gallery", style: TextStyle(fontSize: 32,)),
                Imagegallery(imggal[0], imggal[1], imggal[2], imggal[3])
              ],
            ),
          ][currentIndex],
        )
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
