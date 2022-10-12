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
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.8,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: SingleChildScrollView(
                  child: StaffListItem(),
                ),
              );
            },
            childCount: 20,
          ),
        )
      ],
    );
  }
}

class StaffListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network('https://drive.google.com/uc?export=view&id=' +
            '1ntGLjC5PuoVC59VXP0iOnsGI7M4IIvCp'),
        Text('Takao Sekiguchi'),
      ],
    );
  }
}
