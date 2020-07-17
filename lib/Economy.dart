import 'constructor.dart';

class Economy {
  int _economyNumber = 0;
  List<Constructor> _getEconomyText = [
    Constructor('Never spend your money before you have earned it.'),
    Constructor(
        'If all the economists were laid end to end, they would not reach a conclusion.'),
    Constructor(
        'Government\'s view of the economy could be summed up in a few short phrases: If it moves, tax it. If it keeps moving, regulate it. And if it stops moving, subsidise it.'),
    Constructor(
        'If there\'s any part of the economy that\'s delivered for all the citizens, it\'s got to be the work that we and our partners in our industry have done,'),
    Constructor('There can be economy only where there is efficiency.'),
    Constructor(
        'Truth is the most valuable thing we have. Let us economize it.'),
    Constructor(
        'Commerce is a game of skill which everyone cannot play and few can play well.'),
    Constructor(
        'Economic growth without social progress lets the great majority of people remain in poverty, while a privileged few reap the benefits of rising abundance.'),
    Constructor(
        ' And there is no trade or employment but the young man following it may become a hero.'),
    Constructor(
        ' As a small businessperson, you have no greater leverage than the truth. '),
    Constructor(
        ' Life is an exciting business, and most exciting when it is lived for others.'),
    Constructor(
        ' Let me remind you that credit is the lifeblood of business, the lifeblood of prices and jobs.'),
    Constructor(
        'Disbelief in magic can force a poor soul into believing in government and business.'),
    Constructor(
        'If you want to make peace with your enemy, you have to work with your enemy. Then he becomes your partner. '),
    Constructor(
        ' Business has only two functions - marketing and innovation. '),
    Constructor(
        ' A business like an automobile, has to be driven, in order to get results. '),
    Constructor(
        ' The country that is more developed industrially only shows, to the less developed, the image of its own future. '),
    Constructor(
        ' Out of the agony and travail of economic America the Committee for Industrial Organization was born.'),
    Constructor(
        'Competition is not only the basis of protection to the consumer, but is the incentive to progress. '),
    Constructor(
        ' Let me remind you that credit is the lifeblood of business, the lifeblood of prices and jobs.'),
    Constructor(
        ' Art is the beautiful way of doing things. Science is the effective way of doing things. Business is the economic way of doing things.'),
    Constructor(
        'Technological progress has merely provided us with more efficient means for going backwards. '),
    Constructor(
        'I believe that music is connected by human passions and curiosities rather than by marketing strategies. '),
    Constructor(
        ' Employees make the best dates. You don\'t have to pick them up and they\'re always tax-deductible. '),
    Constructor(
        ' No matter what political reasons are given for war, the underlying reason is always economic. '),
    Constructor(
        'People are only mean when they\'re threatened, and that\'s what our culture does. That\'s what our economy does. '),
  ];
  void nextQuotes() {
    if (_economyNumber < _getEconomyText.length - 1) {
      _economyNumber++;
    }
  }

  String getEconomyQuotesText() {
    return _getEconomyText[_economyNumber].quotes;
  }

  void reset() {
    _economyNumber = 0;
  }

  bool isFinished() {
    if (_economyNumber >= _getEconomyText.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
