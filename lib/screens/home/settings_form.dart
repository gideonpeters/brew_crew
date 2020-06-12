import 'package:brew_crew/shared/constants.dart';
import 'package:flutter/material.dart';

class SettingsForm extends StatefulWidget {
  SettingsForm({Key key}) : super(key: key);

  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  String _currentName;
  String _currentSugars;
  int _currentStrength;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text('Update your brew settings'),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Sugars'),
            validator: (val) => val.isEmpty ? 'Please Enter a name' : null,
            onChanged: (val) => setState(() => _currentName = val),
          ),
          SizedBox(height: 20.0),
          DropdownButtonFormField(
            value: _currentSugars ?? '0',
            items: sugars
                .map((sugar) => DropdownMenuItem(
                      child: Text('$sugar sugars'),
                      value: sugar,
                    ))
                .toList(),
            decoration: textInputDecoration.copyWith(hintText: 'Edit Sugars'),
            onChanged: (value) => setState(() => _currentSugars = value),
          ),
          SizedBox(height: 20.0),
          Slider(
            min: 100.0,
            max: 900.0,
            divisions: 8,
            activeColor: Colors.brown,
            inactiveColor: Colors.brown[_currentStrength ?? 100.0],
            value: (_currentStrength ?? 100.0).toDouble(),
            onChanged: (val) => setState(() => _currentStrength = val.round()),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            onPressed: () async {},
            color: Colors.pink[400],
            child: Text(
              'Update',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
