import 'package:IoT_Dashboard/models/user.dart';
import 'package:IoT_Dashboard/services/database.dart';
import 'package:IoT_Dashboard/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:IoT_Dashboard/shared/constants.dart';
import 'package:provider/provider.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  //form values
  String _currentName;
  String _currentSugars;
  int _currentStrength;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

  return Container();
    /* return StreamBuilder<UserData>(
      stream: DatabaseService(uid: user.uid).userData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          UserData userData = snapshot.data;

          return Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'Update your brew settings',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: userData.name,
                  decoration: textInputDecoration,
                  validator: (val) =>
                      val.isEmpty ? 'Please enter a name' : null,
                  onChanged: (val) => setState(() => _currentName = val),
                ),
                SizedBox(height: 20),
                //dropdown
                DropdownButtonFormField(
                  decoration: textInputDecoration,
                  value: _currentSugars ?? userData.sugars,
                  items: sugars.map((sugar) {
                    return DropdownMenuItem(
                      child: Text('$sugar sugars'),
                      value: sugar,
                    );
                  }).toList(),
                  onChanged: (val) => setState(() => _currentSugars = val),
                ),
                //slider
                Slider(
                  min: 100,
                  max: 900,
                  divisions: 8,
                  value: (_currentStrength ?? userData.strength).toDouble(),
                  activeColor:
                      Colors.brown[_currentStrength ?? userData.strength],
                  inactiveColor:
                      Colors.brown[_currentStrength ?? userData.strength],
                  onChanged: (val) =>
                      setState(() => _currentStrength = val.round()),
                ),
                RaisedButton(
                  color: Colors.pink[400],
                  child: Text(
                    'Update',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      await DatabaseService(uid: user.uid).updateUserData(
                        _currentSugars ?? userData.sugars,
                        _currentName ?? userData.name,
                        _currentStrength ?? userData.strength,
                      );

                      Navigator.pop(context);
                    }
                    // print(_currentName);
                    // print(_currentSugars);
                    // print(_currentStrength);
                  },
                ),
              ],
            ),
          );
        } else {
          return Loading();
        }
      },
    ); */
  }
}
