import 'package:flutter/material.dart';
import 'package:terakoya_staff_intro_site/component_staff_list.dart';
import 'package:terakoya_staff_intro_site/component_staff_search.dart';

class StaffSearchPage extends StatefulWidget {
  @override
  State<StaffSearchPage> createState() => _StaffSearchPageState();
}

class _StaffSearchPageState extends State<StaffSearchPage> {
  var searchWords;

  @override
  void initState() {
    searchWords = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: searchTextField(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: StaffSearchComponent(searchWords),
            )
          ],
        ),
      ),
    );
  }

  Widget searchTextField() {
    return TextField(
      autofocus: true,
      cursorColor: Colors.green,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      textInputAction: TextInputAction.search,
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.yellow),
        ),
        hintText: 'ex1. 寺子屋あすは , ex2. 神奈川県',
        hintStyle: TextStyle(
          color: Colors.orange,
          fontSize: 16,
        ),
      ),
      onChanged: (text) {
        setState(() {
          searchWords = convertTextForBigram(text);
        });
      },
    );
  }
}

List convertTextForBigram(text) {
  var words = [];

  for (var i = 0; i < text.length - 1; i++) {
    var word = text[i] + text[i + 1];
    words.add(word);
  }

  return words;
}
