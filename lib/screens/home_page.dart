import 'package:dictionary_app/database/word_list.dart';
import 'package:dictionary_app/models/word_model.dart';
import 'package:dictionary_app/screens/word_about_page.dart';
import 'package:dictionary_app/widgets/word_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Word?> _words = [];
  final FlutterTts _flutterTts = FlutterTts();
  @override
  void initState() {
    _words = initWord();
    super.initState();
  }

  speak(String text) async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setPitch(1);
    await _flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.blue),
        title: const Text('Qidiruv...'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.keyboard_voice_rounded,
              size: 35,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.change_circle,
              size: 35,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: _words.length,
          itemBuilder: (context, index) {
            return WordCard(
              word: _words[index],
              onVoice: () {
                speak(_words[index]!.wordEng!);
              },
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WordAboutPage(
                      word: _words[index]!,
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
