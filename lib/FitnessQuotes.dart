import 'constructor.dart';

class FitnessQuotes {
  int _quotesNumber = 0;
  List<Constructor> _getFitnessQuotes = [
    Constructor(
        'Take care of your body. It\'s the only place you have to live.'),
    Constructor('To enjoy the glow of good health, you must exercise.'),
    Constructor(
        'The purpose of training is to tighten up the slack, toughen the body, and polish the spirit.'),
    Constructor('Reading is to the mind what exercise is to the body.'),
    Constructor(
        'True enjoyment comes from activity of the mind and exercise of the body; the two are ever united.'),
    Constructor('The only weights I lift are my dogs.'),
    Constructor(
        'A muscle is like a car. If you want it to run well early in the morning, you have to warm it up.'),
    Constructor('Exercise should be regarded as tribute to the heart.'),
    Constructor(
        'Women have fought so long and hard for our rights and equality, and now all our attention is put on being a size 0.'),
    Constructor(
        'Fitness is not about being better than someone else. It\'s about being better than you used to be.'),
    Constructor('Do something today that your future self will thank you for.'),
    Constructor(
        'Today I will do what others won\’t, so tomorrow I can accomplish what others can\’t.'),
    Constructor(
        'Success usually comes to those who are too busy to be looking for it.'),
    Constructor('All progress takes place outside the comfort zone.'),
    Constructor(
        'The last three or four reps is what makes the muscle grow. This area of pain divides a champion from someone who is not a champion.'),
    Constructor(
        'If you think lifting is dangerous, try being weak. Being weak is dangerous.'),
    Constructor(
        'The only place where success comes before work is in the dictionary.'),
    Constructor(
        'The clock is ticking. Are you becoming the person you want to be?'),
    Constructor(
        'Whether you think you can, or you think you can’t, you’re right.'),
    Constructor(
        'You must expect great things of yourself before you can do them.'),
    Constructor(
        'The successful warrior is the average man, with laser-like focus.'),
    Constructor('Action is the foundational key to all success.'),
    Constructor(
        'All our dreams can come true if we have the courage to pursue them.'),
    Constructor('What hurts today makes you stronger tomorrow.'),
    Constructor('A champion is someone who gets up when they can’t.'),
    Constructor(
        'If something stands between you and your success, move it. Never be denied.'),
  ];
  void nextFitnessQuotesText() {
    if (_quotesNumber < _getFitnessQuotes.length - 1) {
      _quotesNumber++;
    }
    // print(_quotesNumber);
    //print(_getFitnessQuotes.length);
  }

  String getFitnessQuotesText() {
    return _getFitnessQuotes[_quotesNumber].quotes;
  }

  void reset() {
    _quotesNumber = 0;
  }

  bool isFinished() {
    if (_quotesNumber >= _getFitnessQuotes.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }
}
