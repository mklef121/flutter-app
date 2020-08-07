import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).primaryColor;
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          this._buildButtonColumn(color, Icons.phone, "Call"),
          this._buildButtonColumn(color, Icons.map, "Address"),
          this._buildButtonColumn(color, Icons.share, "Share")
        ],
      ),
    );
  }


  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      // mainAxisSize:
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

Widget buttonRows() {
  return Container(
    padding: const EdgeInsets.all(32),
    child: Row(),
  );
}
