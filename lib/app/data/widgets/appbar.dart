import 'package:flutter/material.dart';

class AppbarBener extends StatelessWidget with PreferredSizeWidget {
  const AppbarBener({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white24,
      title: Text(
        'KOMIK - KITA',
        style: TextStyle(color: Colors.black),
      ),
      elevation: 0,
      centerTitle: true,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search_off))],
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
