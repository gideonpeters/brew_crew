import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[100],
      child: Center(
        child: CircularProgressIndicator(
          // backgroundColor: Colors.brown[100],
          // key: _formKey,
          semanticsLabel: 'Loading',
          semanticsValue: 'Loading value',
          strokeWidth: 5.0,
          // value: 10,
          // valueColor: Animation()>,
        ),
      ),
    );
  }
}
