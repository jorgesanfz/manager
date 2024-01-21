import 'package:flutter/material.dart';

class Meets extends StatefulWidget {
  final Function(String) onNavigate;

  Meets({required this.onNavigate});

  @override
  State<Meets> createState() => _MeetsState();

}

class _MeetsState extends State<Meets>{
  @override
  Widget build(BuildContext context) {
    return Container();
  }

}