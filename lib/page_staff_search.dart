import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_search.dart';

class StaffSearchPage extends StatefulWidget {
  @override
  State<StaffSearchPage> createState() => _StaffSearchPageState();
}

class _StaffSearchPageState extends State<StaffSearchPage> {
  var _searchWords = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _searchTextField(),
      ),
      body: Center(
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

List _convertTextForBigram(text) {
  var _words = [];

  for (var i = 0; i < text.length - 1; i++) {
    var _word = text[i] + text[i + 1];
    _words.add(_word);
  }

  return _words;
}
