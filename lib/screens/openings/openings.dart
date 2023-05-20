import 'package:flutter/material.dart';

class OpeningsListPage extends StatefulWidget {
  const OpeningsListPage({super.key});

  @override
  State<OpeningsListPage> createState() => _OpeningsListPageState();
}

class _OpeningsListPageState extends State<OpeningsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('openings List'),
    );
  }
}