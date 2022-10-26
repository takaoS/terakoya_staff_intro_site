import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_search.dart';

class StaffSearchPage extends StatefulWidget {
  @override
  State<StaffSearchPage> createState() => _StaffSearchPageState();
}

class _StaffSearchPageState extends State<StaffSearchPage> {
  List<String> _searchWords = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _searchTextField(),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: StaffSearchComponent(_searchWords),
            )
          ],
        ),
      ),
    );
  }

  Widget _searchTextField() {
    return TextField(
      autofocus: true,
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      textInputAction: TextInputAction.search,
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
        ),
        hintText: 'ex1. 寺子屋あすは , ex2. 神奈川県',
        hintStyle: TextStyle(
          color: Colors.white70,
          fontSize: 16,
        ),
      ),
      onChanged: (text) {
        setState(() {
          _searchWords = _convertTextForBigram(text);
        });
      },
    );
  }
}

List<String> _convertTextForBigram(String text) {
  List<String> words = [];

  for (var i = 0; i < text.length - 1; i++) {
    var word = text[i] + text[i + 1];
    words.add(word);
  }

  return words;
}
