import 'package:IoT_Dashboard/models/brew.dart';
import 'package:IoT_Dashboard/screens/home/settings_home.dart';
import 'package:IoT_Dashboard/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:IoT_Dashboard/services/database.dart';
import 'package:provider/provider.dart';
import 'brew_list.dart';

class Home extends StatelessWidget {
  //final AuthService _authService = AuthService();
  DatabaseService db = DatabaseService(uid: 'rs0B8dePwJUeq5OVPBcY0AeVRxb2');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IoT Dashboard'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          db.showdata();
        },
        child: const Icon(Icons.settings_remote),
        ),
        );

    
  }
}

/* void _showSettingsPanel() {
      showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Container(
              height: 350,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: SettingsForm(),
            );
          });
    } */
    /* return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Brew Crew'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: [
            FlatButton.icon(
              onPressed: () async {
                await _authService.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('logout'),
            ),
            FlatButton.icon(
              onPressed: () => _showSettingsPanel(),
              icon: Icon(Icons.settings),
              label: Text('settings'),
            ),
          ],
        ),
        body: Container(
          child: BrewList(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/coffee_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ); */