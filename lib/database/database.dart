class Aibon {
  final String name;

  final String explain;
  final String image;

  Aibon({
    required this.name,
    required this.explain,
    required this.image,
  });
}

List<Aibon> aibon_list = [
  // Aibon(name: "雑談", image: 'assets/images/talk.png', explain: '簡単な日常会話が\nできます'),
  // Aibon(
  //     name: "お料理", image: 'assets/images/talk.png', explain: '簡単な日常会話が\nできます'),
  Aibon(
      name: "健康・ヘルスケア",
      image: 'assets/images/health.png',
      explain: '簡単な日常会話が\nできます'),
  Aibon(
      name: "美容・ダイエット",
      image: 'assets/images/beauty.png',
      explain: '簡単な日常会話が\nできます'),
  Aibon(
      name: "アニメ・漫画", image: 'assets/images/tv.png', explain: '簡単な日常会話が\nできます'),
  Aibon(
      name: "小説・エッセイ",
      image: 'assets/images/book.png',
      explain: '簡単な日常会話が\nできます'),
  Aibon(
      name: "ファッション",
      image: 'assets/images/bag.png',
      explain: '簡単な日常会話が\nできます'),
];

class Talkchat {
  final name;
  final String text;
  final String image;

  Talkchat({required this.name, required this.text, required this.image});
}

List<Talkchat> talk_list = [
  // Aibon(name: "雑談", image: 'assets/images/talk.png', explain: '簡単な日常会話が\nできます'),
  // Aibon(
  //     name: "お料理", image: 'assets/images/talk.png', explain: '簡単な日常会話が\nできます'),
  Talkchat(
    name: "aibon",
    text: "はじめまして",
    image: 'assets/images/talk_icon.png',
  ),
  Talkchat(
    name: "aibon",
    text: "こんにちは",
    image: 'assets/images/talk_icon.png',
  ),
];
