import 'package:flutter/material.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});
  @override
  State createState() => _SocialMediaState();
}

class _SocialMediaState extends State {
  bool _isSelected = false;

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.white, size: 29),
        backgroundColor: Colors.blue,
        title: const Text("Social Media"),
        actions: [
          ToggleButtons(
            isSelected: [_isSelected, !_isSelected],
            onPressed: (int index) {
              _toggleSelection();
            },
            children: const <Widget>[
              Icon(Icons.check),
              Icon(Icons.clear),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text(
          _isSelected ? 'Selected' : 'Not Selected',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
