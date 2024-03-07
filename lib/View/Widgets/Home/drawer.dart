import 'package:flutter/material.dart';

Widget drawer() {
  return  const ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Drawer(
          backgroundColor: Colors.amber,
        ),
      );
}
