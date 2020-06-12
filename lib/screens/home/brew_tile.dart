import 'package:brew_crew/models/brew.dart';
import 'package:flutter/material.dart';

class BrewTile extends StatelessWidget {
  final Brew brew;
  BrewTile({Key key, this.brew}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
      ),
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown[brew.strength],
            radius: 25.0,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          title: Text(brew.name),
          subtitle: Text('Takes ${brew.sugars} sugars(s)'),
        ),
      ),
    );
  }
}
