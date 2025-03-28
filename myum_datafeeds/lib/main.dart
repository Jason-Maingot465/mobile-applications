import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'customcard.dart';
// external libraries
import 'package:http/http.dart' as http; // performs network requests
import 'package:xml/xml.dart';

// https://news.miami.edu/feeds/latest-25.xml

// make a network request
Future<String> fetchXML(String url) async{
  final output = await http.get(Uri.parse(url));
  return (output.body);
}

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

  //var imgs = [];
  //var titles = [];
  //var summaries = [];

  List<Widget> myNews = [];
  List<Widget> myNews2 = [];
  List<Widget> myNews3 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchXML("https://news.miami.edu/feeds/latest-25.xml").then((data){
      final document = XmlDocument.parse(data);
      final newsitems = document.findAllElements("newsitem");

      newsitems.forEach((newsitem){
        var img = newsitem.getElement('imageSmall')?.innerText;
        print(img);
        var title = newsitem.getElement('title')?.innerText;
        print(title);
        var summary = newsitem.getElement('abstract')?.innerText;
        print(summary);

        //Add items to a list/collection
        myNews.add(CustomCard(img!, title!, summary!));
      });

    }).catchError((error){
      print("error getting data: $error");
    }); 

    fetchXML("https://news.miami.edu/frost/feeds/all-news-15.xml").then((data){
      final document = XmlDocument.parse(data);
      final newsitems = document.findAllElements("newsitem");

      newsitems.forEach((newsitem){
        var img = newsitem.getElement('imageSmall')?.innerText;
        print(img);
        var title = newsitem.getElement('title')?.innerText;
        print(title);
        var summary = newsitem.getElement('abstract')?.innerText;
        print(summary);

        //Add items to a list/collection
        myNews2.add(CustomCard(img!, title!, summary!));
      });

    }).catchError((error){
      print("error getting data: $error");
    }); 

    fetchXML("https://news.miami.edu/sonhs/feeds/student-stories-feed.xml").then((data){
      final document = XmlDocument.parse(data);
      final newsitems = document.findAllElements("newsitem");

      newsitems.forEach((newsitem){
        var img = newsitem.getElement('imageSmall')?.innerText;
        print(img);
        var title = newsitem.getElement('title')?.innerText;
        print(title);
        var summary = newsitem.getElement('abstract')?.innerText;
        print(summary);

        //Add items to a list/collection
        myNews3.add(CustomCard(img!, title!, summary!));
      });

    }).catchError((error){
      print("error getting data: $error");
    }); 

  }

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
            children: myNews,
          ),
          ListView(
            children: myNews2,
          ),
          ListView(
            children: myNews3,
          ),
          
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
