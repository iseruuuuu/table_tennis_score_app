import 'package:flutter/material.dart';

class SetItem extends StatelessWidget {
  const SetItem({
    Key? key,
    required this.firstSet,
    required this.secondSet,
    required this.thirdSet,
    required this.fourthSet,
    required this.fifthSet,
  }) : super(key: key);

  final String firstSet;
  final String secondSet;
  final String thirdSet;
  final String fourthSet;
  final String fifthSet;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.height / 6,
          height: MediaQuery.of(context).size.height / 6,
          color: Colors.red,
          child: Center(
            child: Text(
              firstSet,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.height / 6,
          height: MediaQuery.of(context).size.height / 6,
          color: Colors.red,
          child: Center(
            child: Text(
              secondSet,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.height / 6,
          height: MediaQuery.of(context).size.height / 6,
          color: Colors.red,
          child: Center(
            child: Text(
              thirdSet,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.height / 6,
          height: MediaQuery.of(context).size.height / 6,
          color: Colors.red,
          child: Center(
            child: Text(
              fourthSet,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.height / 6,
          height: MediaQuery.of(context).size.height / 6,
          color: Colors.red,
          child: Center(
            child: Text(
              fifthSet,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
