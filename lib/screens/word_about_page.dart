import 'package:dictionary_app/models/word_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';

class WordAboutPage extends StatefulWidget {
  final Word? word;
  WordAboutPage({Key? key, this.word}) : super(key: key);

  @override
  _WordAboutPageState createState() => _WordAboutPageState();
}

class _WordAboutPageState extends State<WordAboutPage> {
  final FlutterTts _flutterTts = FlutterTts();

  speak(String text) async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setPitch(1);
    await _flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.blue),
        title: Text(
          widget.word!.wordEng!,
          style: const TextStyle(
              fontSize: 25, fontFamily: 'RobotoSlab', color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.word!.wordEng!,
                  style: const TextStyle(
                      fontSize: 30,
                      fontFamily: 'RobotoSlab',
                      color: Colors.blue),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.volume_up,
                    color: Colors.grey,
                    size: 40,
                  ),
                  onPressed: () {
                    speak(widget.word!.wordEng!);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
            ),
            child: Text(
              "[" + widget.word!.transcription! + "]",
              style: const TextStyle(
                  fontSize: 14, fontFamily: 'RobotoSlab', color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
            ),
            child: Text(
              widget.word!.wordUzb1!,
              style: const TextStyle(
                  fontSize: 25, fontFamily: 'RobotoSlab', color: Colors.orange),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Text(
              widget.word!.exmaple!.splitMapJoin('\n'),
              style: const TextStyle(
                fontSize: 25,
                fontFamily: 'RobotoSlab',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
