import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/showBudget.dart';

Drawer createDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        // Menambahkan clickable menu
        ListTile(
          title: const Text('Program Counter'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
        ),
        ListTile(
          title: const Text('Tambah Budget'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyFormPage()),
            );
          },
        ),
        ListTile(
          title: const Text('Show Budget'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ShowBudget()),
            );
          },
        ),
      ],
    ),
  );
}