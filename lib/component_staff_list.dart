import 'package:flutter/material.dart';

class StaffListComponent extends StatefulWidget {
  @override
  _StaffListComponentState createState() => _StaffListComponentState();
}

class _StaffListComponentState extends State<StaffListComponent> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                width: 500.0,
                height: 500.0,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Hello!'),
              );
            },
            childCount: 20,
          ),
        )
      ],
    );
  }
}
