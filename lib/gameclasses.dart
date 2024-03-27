import 'dart:math';

void sayHello() {
  print('Hello');
}

class footballPlayer {
  int id;
  String firstName;
  String lastName;
  position playerpos;
  int squadNumber;
  int goalScored;
  int bigChances;
  int bigChanceRatio;

  footballPlayer({required this.id, required this.firstName, required this.lastName, required this.playerpos, required this.squadNumber, this.goalScored = 0, this.bigChances = 0, this.bigChanceRatio = 0});

  String getName() {
    return '${firstName.substring(0, 1)}. ${lastName}';
  }
  void showPlayerStats() {
    print(this.getName());
    print('goals scored:');
    print(this.goalScored);
    print('Big chances:');
    print(this.bigChances);
    print('Goals / Big chances ratio:');
    print(this.ratio());
    print('---------------------');
  }

  double ratio() {
    if (bigChances == 0) {
      return goalScored.toDouble();
    } else {
      return goalScored / bigChances;
    }
  }
}

class position {
  int id;
  String name;
  int scoreOdds;
  position({required this.id, required this.name, required this.scoreOdds});
}

class footballTeam {
  int id;
  String name;
  String country;
  String league;
  List<footballPlayer> players;

  footballTeam(
      {required this.id, required this.name, required this.league, required this.country, required this.players});

  void showTeam() {
    print('The ${this.name} Lineup');
    this.players.forEach((element) {
      print('${element.squadNumber} - ${element.firstName} ${element.lastName}');
    });
  }
}

class footballGame {
  footballTeam homeTeam;
  footballTeam awayTeam;
  int homeScore;
  int awayScore;
  int time;

  footballGame(
      {required this.homeTeam, required this.awayTeam, this.homeScore = 0, this.awayScore = 0, this.time = 0});

  void showLineUp() {
    homeTeam.showTeam();
    awayTeam.showTeam();
  }


  void showScore() {
    print('$time: ${homeTeam.name} - $homeScore : $awayScore ${awayTeam.name}');
  }


  void playGame(int minute) {
    this.time = minute;
    showScore();
    var random = Random();
    int randomNum1 = random.nextInt(homeTeam.players.length);
    int randomNum2 = random.nextInt(awayTeam.players.length);
    bool didHeScoreHome = whoScored(homeTeam.players, randomNum1);
    bool didHeScoreAway = whoScored(awayTeam.players, randomNum2);
    if (didHeScoreHome) {
      this.homeScore++;
    }
    if (didHeScoreAway) {
      this.awayScore++;
    }
  }

  bool whoScored(List<footballPlayer> tempPlayers, int numb) {
    bool resault = false;
    var random = Random();
    int randomNum1 = random.nextInt(tempPlayers[numb].playerpos.scoreOdds);
    int randomNum2 = random.nextInt(tempPlayers[numb].playerpos.scoreOdds);
    if (randomNum1 == randomNum2) {
      print('GOAL FOR PLAYER ${tempPlayers[numb].getName()}');
      tempPlayers[numb].goalScored++;
      resault = true;
    } else {
      print('BIG CHANCE MISSED BY ${tempPlayers[numb].getName()}');
      tempPlayers[numb].bigChances++;
    }
    return resault;
  }
}
