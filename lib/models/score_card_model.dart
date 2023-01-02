class ScoreCardModel {
  final String day;
  final String score;

  ScoreCardModel({required  this.day,required  this.score});


}

List scoreCardList = [
  ScoreCardModel(day: "Today", score: "10"),
  ScoreCardModel(day: "Last Week", score: "80"),
  ScoreCardModel(day: "Last Month", score: "280"),
];