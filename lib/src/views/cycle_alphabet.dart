import 'package:flutter/material.dart';

class CycleAlphabet extends StatefulWidget {
  const CycleAlphabet({Key? key}) : super(key: key);

  @override
  State<CycleAlphabet> createState() => _CycleAlphabetState();
}

class _CycleAlphabetState extends State<CycleAlphabet> {
  var codeAscii = 65;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Challenge #1"),
          centerTitle: true,
        ),
        body: _createBodyText(),
        floatingActionButton: _createButtons(),
    );
  }

  Widget _createBodyText() {
    return Center(
      child: Text(
        String.fromCharCode(codeAscii),
        style: const TextStyle(
          fontSize: 200,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
        ),
      ),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: previous,
          child: const Icon(Icons.keyboard_arrow_left),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: next,
          child: const Icon(Icons.keyboard_arrow_right),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }

  void previous() => setState(() {
    codeAscii = codeAscii < 66 ? 90 : --codeAscii;
  });

  void next() => setState(() {
    codeAscii = codeAscii > 89 ? 65 : ++codeAscii;
  });
}
