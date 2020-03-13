import 'package:daily_diary/customs/customClass.dart';
import 'package:daily_diary/customs/customWidgets.dart';
import 'package:daily_diary/screens/entry_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text('Journal'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EntryScreen()));
            },
          ),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: mainBody(),
    );
  }

  Widget mainBody() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            // TextField need to be changed as Background goes
            // square when focused
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: 'Search Entries',
                suffixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Notebooks',
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 25),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ScrollConfiguration(
                    behavior: CustomScrollBehavior(),
                    child: ListView(
                      children: <Widget>[
                        customCard('November 14', 'Event'),
                        customCard('November 17', 'Another Event'),
                        customCard('November 14', 'Event'),
                        customCard('November 17', 'Another Event'),
                        customCard('November 14', 'Event'),
                        customCard('November 17', 'Another Event'),
                        customCard('November 14', 'Event'),
                        customCard('November 17', 'Another Event'),
                        customCard('November 14', 'Event'),
                        customCard('November 17', 'Another Event'),
                      ],
                    ),
                  ),
                ),
                // Expanded(child: Text('da')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
