import 'package:dictionary_app/models/word_model.dart';
import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  final Word? word;
  final onTap;
  final onVoice;
  WordCard({Key? key, this.word, this.onTap, this.onVoice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    word!.wordEng!,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoSlab'),
                  ),
                  Text(
                    word!.wordUzb1!,
                    style:
                        const TextStyle(fontSize: 16, fontFamily: 'RobotoSlab'),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(
                  Icons.volume_up,
                  color: Colors.blue,
                  size: 40,
                ),
                onPressed: onVoice,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
