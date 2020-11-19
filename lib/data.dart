import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';

enum Start { gameon }
List<String> fillSourceArray() {
  return [
    'assets/V.jpg',
    'assets/V.jpg',
    'assets/suga.jpg',
    'assets/suga.jpg',
    'assets/jhope.jpg',
    'assets/jhope.jpg',
    'assets/joon.jpg',
    'assets/joon.jpg',
    'assets/jin.jpg',
    'assets/jin.jpg',
    'assets/jimin.jpg',
    'assets/jimin.jpg',
    'assets/kookie.jpg',
    'assets/kookie.jpg',
    'assets/tannies.png',
    'assets/tannies.png',
  ];
}

List getSourceArray(
  Start starto,
) {
  List<String> levelAndKindList = new List<String>();
  List sourceArray = fillSourceArray();
  if (starto == Start.gameon) {
    for (int i = 0; i < 12; i++) {
      levelAndKindList.add(sourceArray[i]);
    }
  }
  levelAndKindList.shuffle();
  return levelAndKindList;
}

List<bool> getInitialItemState(Start start) {
  List<bool> initialItemState = new List<bool>();
  if (start == Start.gameon) {
    for (int i = 0; i < 12; i++) {
      initialItemState.add(true);
    }
  }
  return initialItemState;
}

List<GlobalKey<FlipCardState>> getCardStateKeys(Start start) {
  List<GlobalKey<FlipCardState>> cardStateKeys =
      new List<GlobalKey<FlipCardState>>();
  if (start == Start.gameon) {
    for (int i = 0; i < 12; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  }
  return cardStateKeys;
}
