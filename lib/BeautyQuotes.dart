import 'constructor.dart';

class BeautyQuotes {
  int _beautyQuotesNumber = 0;
  List<Constructor> _getBeautyQuotes = [
    Constructor('Personality is to a man what perfume is to a flower.'),
    Constructor(
        'Personality is like a charioteer with two headstrong horses, each wanting to go in different directions.'),
    Constructor(
        'Two things define your personality, the way you manage things when you have nothing, and the way you behave when you have everything.'),
    Constructor(
        'Beauty of a person is temporary. But personality is permenant and lasts forever.'),
    Constructor(
        'I do not care about temporary and un-important things. Good looks are not important to me, but only the good personality is.'),
    Constructor(
        'Beauty and make-up are your plus points if you have very good personality.'),
    Constructor(
        'When you fall for their beauty, you get nothing. But when you fall for personality, everything about that person becomes beautiful.'),
    Constructor(
        'Guys date girl by looking at their looks. But a man will date a girl by looking at her personality.'),
    Constructor(
        'Never let yourself be a product of your surroundings, but encourage your surroundings to be a product of your personality!'),
    Constructor('Having a personality as yours is not less than a blessing.'),
    Constructor(
        'Don’t sacrifice your intuition in order to follow society’s patterns! Preserving your personality in a world full of copycats is the biggest trait you can always rely on!'),
    Constructor(
        'To meet one person is not a hard task, but meeting someone with a strong personality can show you that life is meant to be lived in accordance with your own rules!'),
    Constructor(
        'Whatever you do, make sure society and life never affect your glorious and shining personality! Keep your values high, and your true self-present at all times!'),
    Constructor(
        'Your signature personality will forever detach you from being just like everyone else! Never let anyone interfere with the person you are on the inside!'),
    Constructor(
        'Personality is every individual’s signature trait. There will never be anyone like you, therefore hold on to what makes you so special as a person, a character, and a human being!'),
    Constructor(
        'You can change your getup by spending the money but can’t change your personality. It’s the inner thing that can’t be bought.'),
    Constructor(
        'You can’t judge any person depending on their wealth or sweet words, rather judge them according to their personality.'),
    Constructor(
        'The personality of the individual can be tested by three things: business, wine and conversation.'),
    Constructor(
        'The personality resembles a quality perfume: the one who uses it is the only one who does not feel it.'),
    Constructor(
        'Each man has three personalities: the one he exhibits, the one he has and the one he thinks he has.'),
    Constructor('Let your personality be your profit and not your punishment.'),
    Constructor(
        'The note of the perfect personality is not rebellion, but peace.'),
    Constructor(
        'Having a passive personality, is a soft way to live a dead life.'),
    Constructor(
        'I am what is mine. Personality is the original personal property.'),
    Constructor(
        'There is nothing more attractive than a great positive personality. Its beauty never fades away with time.'),
    Constructor(
        'If you want to know my personality, look through my bedroom window and see how I act.'),
  ];

  void nextQuotes() {
    if (_beautyQuotesNumber < _getBeautyQuotes.length - 1) {
      _beautyQuotesNumber++;
    }
  }

  String getBeautyQuotesText() {
    return _getBeautyQuotes[_beautyQuotesNumber].quotes;
  }

  void reset() {
    _beautyQuotesNumber = 0;
  }

  bool isFinished() {
    if (_beautyQuotesNumber >= _getBeautyQuotes.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
