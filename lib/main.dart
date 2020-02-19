import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';
import 'package:admob_flutter/admob_flutter.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:async';
//import 'iap.dart';

void main() => runApp(MyApp());

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({ Key key }) : super(key: key);
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Weddell'),
    Tab(text: 'Harp'),
    Tab(text: 'Grey')
  ];

  //Iap iap = new Iap();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
  //  iap.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    //iap.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          controller: _tabController,
          tabs: myTabs,
          labelColor: Color.fromRGBO(0, 0, 0, 1),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          WeddellScreen(),
          HarpScreen(),
          GreyScreen()
        ]
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyTabbedPage()
    );
  }
}

class HarpScreen extends StatelessWidget {

  var sounds = [
    ["Ag", "../assets/Sounds/Harp/Ag.mp3"], 
    ["BugOff", "../assets/Sounds/Harp/BugOff.mp3"], 
    ["GreenDay", "../assets/Sounds/Harp/GreenDay.mp3"], 
    ["Hallelujah", "../assets/Sounds/Harp/Hallelujah.mp3"], 
    ["Ma", "../assets/Sounds/Harp/Ma.mp3"], 
    ["Mom", "../assets/Sounds/Harp/Mom.mp3"], 
    ["Mom2", "../assets/Sounds/Harp/Mom2.mp3"], 
    ["Mrrh", "../assets/Sounds/Harp/Mrrh.mp3", "premium"], 
    ["Naa", "../assets/Sounds/Harp/Naa.mp3", "premium"], 
    ["Umba", "../assets/Sounds/Harp/Umba.mp3", "premium"], 
    ["Wow", "../assets/Sounds/Harp/Wow.mp3", "premium"], 
    ["ahHgh", "../assets/Sounds/Harp/ahHgh.mp3", "premium"], 
    ["ahHhghGa", "../assets/Sounds/Harp/ahHhghGa.mp3", "premium"], 
    ["brrrga", "../assets/Sounds/Harp/brrrga.mp3", "premium"], 
    ["haa", "../assets/Sounds/Harp/haa.mp3", "premium"], 
    ["mmmmmmmmmmmm", "../assets/Sounds/Harp/mmmmmmmmmmmm.mp3", "premium"], 
    ["mrhrmph", "../assets/Sounds/Harp/mrhrmph.mp3", "premium"]
  ];

  @override
  Widget build(BuildContext context) {
    return Screen(sounds: this.sounds);
  }
}

class GreyScreen extends StatelessWidget {

  var sounds = [
    ["A", "../assets/Sounds/Grey/A.mp3"], 
    ["B", "../assets/Sounds/Grey/B.mp3"], 
    ["B/C", "../assets/Sounds/Grey/B_C.mp3"], 
    ["C#", "../assets/Sounds/Grey/C_Sharp.mp3"], 
    ["C", "../assets/Sounds/Grey/C.mp3"], 
    ["D Other Seal", "../assets/Sounds/Grey/D_Other_Seal.mp3"], 
    ["C slight sharp", "../assets/Sounds/Grey/C_slight_sharp.mp3"], 
    ["D", "../assets/Sounds/Grey/D.mp3"], 
    ["D/D#", "../assets/Sounds/Grey/D_D_Sharp.mp3"], 
    ["E", "../assets/Sounds/Grey/E.mp3"], 
    ["Eb", "../assets/Sounds/Grey/Eb.mp3"], 
    ["Screemo", "../assets/Sounds/Grey/Screemo.mp3", "premium"], 
    ["Screemo 2", "../assets/Sounds/Grey/Screemo_2.mp3", "premium"], 
    ["Metal", "../assets/Sounds/Grey/Metal.mp3", "premium"], 
    ["Metal 2", "../assets/Sounds/Grey/Metal_2.mp3", "premium"], 
    ["Metal 3", "../assets/Sounds/Grey/Metal_3.mp3", "premium"], 
    ["H Metal", "../assets/Sounds/Grey/H_Metal.mp3", "premium"], 
    ["H Metal 2", "../assets/Sounds/Grey/H_Metal_2.mp3", "premium"], 
    ["H Metal 3", "../assets/Sounds/Grey/H_Metal_3.mp3", "premium"], 
    ["H Metal 4", "../assets/Sounds/Grey/H_Metal_4.mp3", "premium"]
  ];

  @override
  Widget build(BuildContext context) {
    return Screen(sounds: this.sounds);
  }
}

class WeddellScreen extends StatelessWidget {

  var sounds = [
                ["AAAAAA", "../assets/Sounds/Weddell/AAAAAA.mp3"], 
                ["(sneezes)", "../assets/Sounds/Weddell/(sneezes).mp3"], 
                ["baguette", "../assets/Sounds/Weddell/baguette.mp3"], 
                ["bliss", "../assets/Sounds/Weddell/bliss.mp3"], 
                ["d\'egff", "../assets/Sounds/Weddell/d\'egff.mp3"], 
                ["d\'egg", "../assets/Sounds/Weddell/d\'egg.mp3"], 
                ["egg!", "../assets/Sounds/Weddell/egg!.mp3"], 
                ["egg! 2", "../assets/Sounds/Weddell/egg!_2.mp3"], 
                ["egg", "../assets/Sounds/Weddell/egg.mp3"], 
                ["fibsh", "../assets/Sounds/Weddell/fibsh.mp3"], 
                ["fish", "../assets/Sounds/Weddell/fish.mp3"], 
                ["geaaaagh", "../assets/Sounds/Weddell/geaaaagh.mp3"], 
                ["gegg", "../assets/Sounds/Weddell/gegg.mp3"], 
                ["gighphbh", "../assets/Sounds/Weddell/gighphbh.mp3"], 
                ["guh", "../assets/Sounds/Weddell/guh.mp3"], 
                ["l\'egg!", "../assets/Sounds/Weddell/l\'egg!.mp3"], 
                ["l\'egg", "../assets/Sounds/Weddell/l\'egg.mp3"], 
                ["lligkk", "../assets/Sounds/Weddell/lligkk.mp3"], 
                ["mibph", "../assets/Sounds/Weddell/mibph.mp3"], 
                ["mnnnbpbbhbhpth", "../assets/Sounds/Weddell/mnnnbpbbhbhpth.mp3"], 
                ["murph!", "../assets/Sounds/Weddell/murph!.mp3"], 
                ["Alien", "../assets/Sounds/Weddell/Alien.mp3"], 
                ["Alien 2", "../assets/Sounds/Weddell/Alien_2.mp3", "premium"], 
                ["Alien 3", "../assets/Sounds/Weddell/Alien_3.mp3", "premium"], 
                ["Alien 4", "../assets/Sounds/Weddell/Alien_4.mp3", "premium"], 
                ["Alien 5", "../assets/Sounds/Weddell/Alien_5.mp3", "premium"], 
                ["Alien 6", "../assets/Sounds/Weddell/Alien_6.mp3", "premium"], 
                ["AAAAA", "../assets/Sounds/Weddell/AAAAA.mp3", "premium"], 
                ["AAAAAHHHHH", "../assets/Sounds/Weddell/AAAAAHHHHH.mp3", "premium"], 
                ["AAAAGH", "../assets/Sounds/Weddell/AAAAGH.mp3", "premium"], 
                ["AAAGHA", "../assets/Sounds/Weddell/AAAGHA.mp3", "premium"], 
                ["AAAGHAAAA", "../assets/Sounds/Weddell/AAAGHAAAA.mp3", "premium"], 
                ["AAGH", "../assets/Sounds/Weddell/AAGH.mp3", "premium"], 
                ["AAGHHH", "../assets/Sounds/Weddell/AAGHHH.mp3", "premium"], 
                ["AANNNNAAAGGHHHH", "../assets/Sounds/Weddell/AANNNNAAAGGHHHH.mp3", "premium"], 
                ["BNNNGHPHH", "../assets/Sounds/Weddell/BNNNGHPHH.mp3", "premium"], 
                ["BEHH", "../assets/Sounds/Weddell/BEHH.mp3", "premium"], 
                ["BGGHHNNHHH", "../assets/Sounds/Weddell/BGGHHNNHHH.mp3", "premium"], 
                ["BNNNGGHHPH", "../assets/Sounds/Weddell/BNNNGGHHPH.mp3", "premium"], 
                ["BNNNGH", "../assets/Sounds/Weddell/BNNNGH.mp3", "premium"], 
                ["Beh", "../assets/Sounds/Weddell/Beh.mp3", "premium"], 
                ["Bleaahh", "../assets/Sounds/Weddell/Bleaahh.mp3", "premium"], 
                ["Bleeaaaahhh", "../assets/Sounds/Weddell/Bleeaaaahhh.mp3", "premium"], 
                ["Fair", "../assets/Sounds/Weddell/Fair.mp3", "premium"], 
                ["GAAAAGHAA", "../assets/Sounds/Weddell/GAAAAGHAA.mp3", "premium"], 
                ["GAGHAAGAHH", "../assets/Sounds/Weddell/GAGHAAGAHH.mp3", "premium"], 
                ["GEELOLIGLET", "../assets/Sounds/Weddell/GEELOLIGLET.mp3", "premium"], 
                ["HAAAAAAAA", "../assets/Sounds/Weddell/HAAAAAAAA.mp3", "premium"], 
                ["Hello", "../assets/Sounds/Weddell/Hello.mp3", "premium"], 
                ["MMGGGNN", "../assets/Sounds/Weddell/MMGGGNN.mp3", "premium"], 
                ["MMMGHHH", "../assets/Sounds/Weddell/MMMGHHH.mp3", "premium"], 
                ["Move", "../assets/Sounds/Weddell/Move.mp3", "premium"], 
                ["Rats", "../assets/Sounds/Weddell/Rats.mp3", "premium"], 
                ["Trumpet", "../assets/Sounds/Weddell/Trumpet.mp3", "premium"], 
                ["UEAAGHH", "../assets/Sounds/Weddell/UEAAGHH.mp3", "premium"]
            ];
  
  @override
  Widget build(BuildContext context) {
    return Screen(sounds: this.sounds);
  }
}

class Screen extends StatelessWidget {


  final List sounds;
  Screen({this.sounds});

  var imageUrls = [
    "https://i.imgur.com/iHbEQHn.jpg",
    "https://i.imgur.com/fdMLChE.jpg",
    "https://i.imgur.com/6NP1nt9.jpg",
    "https://i.imgur.com/HLcRMp4.jpg",
    "https://i.imgur.com/tjR0Ik3.jpg",
    "https://i.imgur.com/2f5tTlq.jpg",
    "https://i.imgur.com/vBqigcw.jpg",
    "https://i.imgur.com/LrSe7kk.jpg",
    "https://i.imgur.com/K7grPoK.jpg",
    "https://i.imgur.com/mlzsnw8.jpg",
    "https://i.imgur.com/uoUWReH.jpg",
    "https://i.imgur.com/k2sbmY4.jpg",
    "https://i.imgur.com/L3KnJEt.jpg",
    "https://i.imgur.com/SrHW4IM.jpg",
    "https://i.imgur.com/Gry9L09.jpg",
    "https://i.imgur.com/KHOiSnk.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Padding(
              child: AdmobBanner(
              adUnitId: "ca-app-pub-3940256099942544/6300978111",
              adSize: AdmobBannerSize.BANNER
              ),
              padding: EdgeInsets.only(top: 30),
            ),
            Expanded(child: SoundBoard(soundList: this.sounds))
          ],
          mainAxisAlignment: MainAxisAlignment.start,
          
        ),
        //child: SoundBoard(soundList: this.sounds),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrls[Random().nextInt(imageUrls.length)]),
            fit: BoxFit.cover
          )
        ),
    );
  }
}

class SoundBoard extends StatelessWidget {

  SoundBoard({this.soundList});
  final List soundList;

  Widget rowWithPadding(Row row){
    return Padding(
      child: row,
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
      )
    );
  }

  Row sbRow(){
    return Row(children: <Widget>[], mainAxisAlignment: MainAxisAlignment.spaceAround);
  }

  @override
  Widget build(BuildContext context) {
    var rows = <Widget>[];
    var row = sbRow();
    for (final sound in soundList){
      if (row.children.length >= 3){
        rows.add(rowWithPadding(row));
        row = sbRow();
      }
      row.children.add(SoundButton(
        text: sound[0],
        soundPath: sound[1],
        isPremium: sound.length > 2 && sound[2] == "premium"
      ));
    }
    if (row.children.length > 1){
      rows.add(row);
    }
    return ListView(
      children: rows,
      physics: BouncingScrollPhysics(),
    );
  }
}

class SoundButton extends StatelessWidget {
  final String text;
  AudioCache audioPlayer = AudioCache();
  final String soundPath;
  final bool isPremium;
  SoundButton({this.text, this.soundPath, this.isPremium});

  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      children: <Widget>[
        SizedBox(
          width: 100,
          height: 30,
          child: ClipRRect(
            child: RaisedButton(
              onPressed: () async {await audioPlayer.play(soundPath);},
              color: Color(0xff37E8E8),
              child: Text(this.text)
            ),
            borderRadius: BorderRadius.circular(5.0),
          )
        ),
        SizedBox(
          width: 100,
          height: 30,
          child: ClipRRect(
            child: Container(
              child: Text(
                "Premium",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 10
                )
              ),
              color: Color.fromRGBO(0, 0, 0, 0.7),
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
        )
      ]
    );

    if (!this.isPremium){
      stack.children.removeLast();
    }
    return stack;
  }
}