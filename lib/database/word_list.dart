import 'package:dictionary_app/models/word_model.dart';

List<Word?> initWord() {
  List<Word?> words = [];

  var word1 = Word(
      wordEng: "warm clothes",
      wordUzb1: "issiq ko'ylaklar",
      transcription: "wɔːm kləʊ(ð)z",
      exmaple: 'Warm clothes are worn in winter\nQishda issiq kiyim kiyiladi');

  words.add(word1);

  var word2 = Word(
    wordEng: "water bottle",
    wordUzb1: "suv shishasi",
    exmaple: 'Water bottle for drinking water\nSuv shishasi suv ichish uchun',
    transcription: "wɔːtə ˈbɒt(ə)",
  );

  words.add(word2);

  var word3 = Word(
    wordEng: "black",
    wordUzb1: "qora",
    exmaple: 'The sky was moonless and black\nOsmon oysiz va qora edi',
    transcription: "blæk",
  );

  words.add(word3);

  var word4 = Word(
    wordEng: "cook a meal ",
    wordUzb1: "ovqat pishir",
    exmaple: 'cook until I arrivei\nMen kelgunimcha pishiring',
    transcription: "kʊk eɪ miːl",
  );

  words.add(word4);

  var word5 = Word(
    wordEng: "horrible",
    wordUzb1: "ovqat pishir",
    exmaple: "The tea tasted horrible\nChoyning ta'mi dahshatli edi",
    transcription: "ˈhɔːrəbl",
  );

  words.add(word5);

  var word6 = Word(
    wordEng: "belong",
    wordUzb1: "tegishli bo'lmoq",
    exmaple:
        "She is a stranger, and doesn't belong here\nU begona va bu yerga tegishli emas",
    transcription: "bɪˈlɔːŋ",
  );

  words.add(word6);

  var word7 = Word(
    wordEng: "move",
    wordUzb1: "harakat qilmoq",
    exmaple:
        "He let his eyes move across the rows of faces\nU ko'zlarini qator yuzlar bo'ylab harakatlantirdi",
    transcription: "muːv",
  );

  words.add(word7);

  var word8 = Word(
    wordEng: "know",
    wordUzb1: "bilmoq",
    exmaple:
        "I know of one local who shot himself\nMen o'zini otib o'ldirgan bir mahalliyni bilaman",
    transcription: "noʊ",
  );

  words.add(word8);

  var word9 = Word(
    wordEng: "agree",
    wordUzb1: "rozi bo'lmoq",
    exmaple:
        "She's eaten something that didn't agree with her\nU bilan rozi emas edi, bir narsa egan bo'lyapdi",
    transcription: "əˈɡriː",
  );

  words.add(word9);

  var word10 = Word(
    wordEng: "Listen",
    wordUzb1: "tinglamoq",
    exmaple:
        'Radio plays are definitely worth a listen\nRadio spektakllarni albatta tinglashga arziydi',
    transcription: "ˈlɪsn",
  );

  words.add(word10);

  return words;
}
