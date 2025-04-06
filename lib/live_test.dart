int sortByValueDesc(MapEntry<String, double> first, MapEntry<String, double> second){
  return second.value.compareTo(first.value);
}

void main(){
  // Sample Inputs
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  // Average Score
  Map<String, double> averageScores = {};

  // Calculate Average Score
  for(var student in students){
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);

    int totalScore = 0;
    for(int score in scores){
      totalScore += score;
    }
    double averageScore = totalScore / scores.length;
    averageScores[name] = double.parse(averageScore.toStringAsFixed(2));
  }

  // Sorting of Average Scores
  List<MapEntry<String, double>> averageList = averageScores.entries.toList();
  averageList.sort(sortByValueDesc);

  Map<String, double> sortedAverageScores = {};

  for(var listItem in averageList){
    sortedAverageScores[listItem.key] = listItem.value;
  }

  print(sortedAverageScores);

}