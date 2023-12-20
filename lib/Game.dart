
import 'dart:math';

import 'package:tarea_flutter/ChooseImagesScreen.dart';
import 'package:tarea_flutter/SettingsScreen.dart';
import 'package:tarea_flutter/ShowImagesScreen.dart';
import 'package:intl/intl.dart';

class Game {
  String? userName;
  int? guesses;
  String? timePlayed;
  String? datePlayed;

  // ignore: empty_constructor_bodies
  Game() {}

  Game.full({
    this.userName,
    this.guesses,
    this.timePlayed,
    this.datePlayed,
  });

  Game getCurrentGame() {
    Game game = Game.full(userName: getUserName(), 
                      guesses: getGuesses(),
                      timePlayed: getTimePlayed(), 
                      datePlayed: getFormattedDateTime());

    return game;
  }

  double getTotalScore() {
    var numberOfCards = currentSettings?.numberOfCards ?? 0;
    if (numberOfCards == 0) return 0.0;
    return guesses! / numberOfCards * 10;
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'guesses': guesses,
      'timePlayed': timePlayed,
      'datePlayed': datePlayed, 
    };
  }

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game.full(
      userName: json['userName'],
      guesses: json['guesses'],
      timePlayed: json['timePlayed'],
      datePlayed: json['datePlayed'],
    );
  }

  String getUserName() {
    return currentSettings?.userName ?? "";
  }

  int getGuesses() {
    int count = 0;
    int minLength = min(userOrder.length, cardOrder.length);

    for (int i = 0; i < minLength; i++) {
      if (userOrder[i] == cardOrder[i]) {
        count++;
      }
    }

    return count;
  }


  String getTimePlayed() {
    return time.getParsedCurrentTime();
  }

  String getFormattedDateTime() {
    var now = DateTime.now();
    var formatter = DateFormat('dd/MM/yyyy, HH:mm');
    return formatter.format(now);
  }

  Game resetGame() {
    return Game();
  }
}