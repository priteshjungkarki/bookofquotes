import 'constructor.dart';

class Evil {
  int _evilNumber = 0;
  List<Constructor> _getEvilText = [
    Constructor(
        'O Death, rock me asleep, bring me to quiet rest, let pass my weary guiltless ghost out of my careful breast. '),
    Constructor(
        'What spirit is so empty and blind, that it cannot recognize the fact that the foot is more noble than the shoe, and skin more beautiful than the garment with which it is clothed? '),
    Constructor('If not me then who? Confront evil!'),
    Constructor('The most savage of human kind are the most advanced'),
    Constructor(
        'Good at the wrong place and time becomes evil; evil in the right place and time becomes good.'),
    Constructor('May the Saviour set us free from every evil spirit.'),
    Constructor(
        'Fear still haunted Sunktokeca as he recalled the pair of blue eyes in a face of bleached bone.'),
    Constructor(
        'Following the Rumanian tradition, garlic is used in excess to keep the vampires away.'),
    Constructor(
        'There is no ghost so difficult to lay as the ghost of an injury. '),
    Constructor(
        'On Halloween, witches come true; Wild ghosts escape from dreams. Each monster dances in the park.'),
    Constructor(
        'His claim to his home is deep, but there are too many ghosts. He must absorb without being absorbed. '),
    Constructor(
        ' I never really address myself to any image anybody has of me. That\'s like fighting with ghosts. '),
    Constructor(
        'At first cock-crow the ghosts must go Back to their quiet graves below. '),
    Constructor(
        ' I don\'t know that there are real ghosts and goblins, but there are always more trick-or-treaters than neighborhood kids. '),
    Constructor('Adversity makes men, and prosperity makes monsters. '),
    Constructor(' Hell is empty and all the devils are here. '),
    Constructor(
        ' It is not a God, just and good, but a devil, under the name of God, that the Bible describes. '),
    Constructor(
        'Man as an individual is a genius. But men in the mass form the headless monster, a great, brutish idiot that goes where prodded. '),
    Constructor(
        ' It was pride that changed angels into devils; it is humility that makes men as angels.'),
    Constructor(
        'I\'m not afraid to look like a big, hairy, smelly, foreign devil in Tokyo, though I do my best not to, I really do. '),
    Constructor(
        ' Probably the toughest time in anyone\'s life is when you have to murder a loved one because they\'re the devil.'),
    Constructor(
        'From the world of darkness I did loose demons and devils in the power of scorpions to torment. '),
    Constructor(' I don\'t even own a TV because I think it\'s the devil. '),
    Constructor(
        'Fear is the dark room where the Devil develops his negatives.'),
    Constructor(
        'The Devil is like a strainer that separates the mud from the gold. '),
    Constructor(
        ' Beauty is mysterious as well as terrible. God and devil are fighting there, and the battlefield is the heart of man. '),
  ];
  void nextQuotes() {
    if (_evilNumber < _getEvilText.length - 1) {
      _evilNumber++;
    }
  }

  String getEviltQuotesText() {
    return _getEvilText[_evilNumber].quotes;
  }

  void reset() {
    _evilNumber = 0;
  }

  bool isFinished() {
    if (_evilNumber >= _getEvilText.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
