class ReviewData {
  final int id;
  final String name;
  final String desc;

  const ReviewData({required this.id, required this.name, required this.desc});
}

const List<ReviewData> reviews = <ReviewData>[
  ReviewData(id: 1, name: "Sinon", desc: '"So good recipe"'),
  ReviewData(id: 2, name: "Chisato", desc: '"It\'s easy to use the app"'),
  ReviewData(id: 3, name: "Takina", desc: '"I love this app"'),
  ReviewData(id: 4, name: "Reina izumi", desc: '"Great!!"'),
  ReviewData(
      id: 5,
      name: "Hayasaka",
      desc: '"I will definitely recommend to my family"'),
];
