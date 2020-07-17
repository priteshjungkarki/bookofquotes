import 'constructor.dart';

class Emotional {
  int _motivationalNumber = 0;
  List<Constructor> _motivationalQuotesText = [
    Constructor(
        'Quick to judge, quick to anger, slow to understand ... prejudice, fear, and ignorance walk hand in hand.'),
    Constructor(
        'The best and most beautiful things in the world cannot be seen or even touched. They must be felt with the heart'),
    Constructor(
        'I don\'t want to be at the mercy of my emotions. I want to use them, to enjoy them, and to dominate them.'),
    Constructor('One thing you can\'t hide -is when you\'re crippled inside.'),
    Constructor(
        'The emotion that can break your heart is sometimes the very one that heals it...'),
    Constructor(
        'Your emotions are the slaves to your thoughts, and you are the slave to your emotions.'),
    Constructor('Pity those who don\'t feel anything at all.'),
    Constructor(
        'The world is a tragedy to those who feel, but a comedy to those who think.'),
    Constructor(
        'I envy people that know love. That have someone who takes them as they are.'),
    Constructor(
        'Life is a comedy to those who think, a tragedy to those who feel.'),
    Constructor(
        'One ought to hold on to one\'s heart; for if one lets it go, one soon loses control of the head too.'),
    Constructor(
        'But feelings can\'t be ignored, no matter how unjust or ungrateful they seem.'),
    Constructor(
        'The moment we cry in a film is not when things are sad but when they turn out to be more beautiful than we expected them to be.'),
    Constructor(
        'In order to move on, you must understand why you felt what you did and why you no longer need to feel it.'),
    Constructor(
        'Sex is always about emotions. Good sex is about free emotions; bad sex is about blocked emotions.'),
    Constructor(
        'It is useless to attempt to reason a man out of a thing he was never reasoned into'),
    Constructor(
        'The only way to change someone\'s mind is to connect with them from the heart. '),
    Constructor(
        'No one cares how much you know, until they know how much you care.'),
    Constructor(
        'Unleash in the right time and place before you explode at the wrong time and place.'),
    Constructor(
        'The greatest ability in business is to get along with others and influence their actions.'),
    Constructor(
        'Every time we allow someone to move us with anger, we teach them to be angry. '),
    Constructor(
        'Experience is not what happens to you--it\'s how you interpret what happens to you.'),
    Constructor(
        'It isn\'t stress that makes us fall--it\'s how we respond to stressful events. '),
    Constructor('Whatever is begun in anger, ends in shame.'),
    Constructor('For news of the heart, ask the face.'),
    Constructor(
        'Let\'s not forget that the little emotions are the great captains of our lives and we obey them without realizing it.'),
  ];

  void nextText() {
    if (_motivationalNumber < _motivationalQuotesText.length - 1) {
      _motivationalNumber++;
    }
  }

  String getMotivationalQuotesText() {
    return _motivationalQuotesText[_motivationalNumber].quotes;
  }

  bool isFinished() {
    if (_motivationalNumber >= _motivationalQuotesText.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _motivationalNumber = 0;
  }
}
