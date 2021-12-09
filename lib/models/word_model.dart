class Word {
  final String? wordEng;
  final String? wordUzb1;
  final String? transcription;
  final String? exmaple;
  final bool? isFavorite;
  final bool? isLearned;

  Word({
    this.exmaple,
    this.wordEng,
    this.wordUzb1,
    this.transcription,
    this.isFavorite = false,
    this.isLearned = false,
  });

  Word.fromJson(Map<String, dynamic> json)
      : wordEng = json['wordEng'],
        wordUzb1 = json['wordUzb1'],
        transcription = json['transcription'],
        isFavorite = json['isFavorite'],
        exmaple = json['exmaple'],
        isLearned = json['isLearned'];

  Map<String, dynamic> toJson() => {
        'wordEng': wordEng,
        'wordUzb1': wordUzb1,
        'transcription': transcription,
        'isFavorite': isFavorite,
        'isLearned': isLearned,
        'exmaple': exmaple,
      };
}
