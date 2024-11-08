class Tasbeeh {
  int? id;
  String tasbeehArbi;
  String tasbeehBangla;
  String tasbeehEnglish;

  Tasbeeh({
    this.id,
    required this.tasbeehArbi,
    required this.tasbeehBangla,
    required this.tasbeehEnglish,
  });
}

List<Tasbeeh> tasbeehItems = [
  Tasbeeh(
    tasbeehArbi: " ٱللَّٰهُ أَكْبَرُ ",
    tasbeehBangla: "আল্লাহু আকবার",
    tasbeehEnglish: "Allah is Greater",
  ),
  Tasbeeh(
    tasbeehArbi: "ٱلْحَمْدُ لِلَّٰهِ",
    tasbeehBangla: "আল-হামদু লিল্লাহ",
    tasbeehEnglish: "All praise is due to Allah",
  ),
  Tasbeeh(
    tasbeehArbi: "سُبْحَانَ ٱللَّٰهِ",
    tasbeehBangla: "সুবহানাল্লাহ",
    tasbeehEnglish: "Glorified is Allah",
  ),
];
