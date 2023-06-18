import 'dart:io';
import 'dart:math';
import 'package:path/path.dart' as p;

class Citation {
  Citation();

  static String getRandomElement<T>() {
    List<String> list = [];
    list.addAll({
      'Be stronger than your excuses',
      'Breathe. It is just a bad day, not a bad life',
      'Now or never',
      'Do not be afraid to fail. Be afraid not try',
      'Begin! Even if you have no idea if it will work',
      'Bloom where you are planted',
      'Stop trying to calm the storm. Calm yourself. The storm will pass',
      'Your superpower is being you',
      'Strive for progress not perfection.',
      'Be fearlessly authentic!',
      'A dream without a plan is just a wish',
      'Give yourself some credit for how far you have come!',
      'It will all make sense one day',
      'You deserve the best!',
      'Always bring your own sunshine!',
      'All I can do is to do my best!',
      'It is okay to grow slowly',
      'You get what you work for. Not what you wish for',
      'Be good to yourself',
      'Live today',
      'I had agree with you but then we had both be wrong',
      'Focus on the step in front of you. Not the whole staircase',
      'Comparison is the thief of joy!',
      'Explore more. Worry less',
      'A small step forward is still a step!',
      'A little progress each day adds up to big results',
      'Sometimes you win, and sometimes you learn',
      'Embrace what you have',
      'Create your own sunshine!',
      'There is always something to be thankful for',
      'Dreams do not work unless you do',
      'Do not listen to criticism from someone you would not seek advice from',
      'A grateful heart is a magnet for miracles',
      'The bravest thing you can be is yourself',
      'Focus on what gives you energy not on what takes it',
      'You was born to stand out; stop trying to fit in!',
      'You are stronger than you think',
      'Celebrate every tiny victory',
      'Today is a good day to be a little brave',
      'Talk about your blessings more than you talk about your problems',
      'Great things take time',
      'Do small things with great joy',
      'Keep on keeping on',
      'You are made of magic',
      'If you change, it is for yourself',
      'Actually, you can',
      'Be patient with yourself. Nothing in nature blooms all year',
      'Bad vibes do not go with your outfit',
      'The grass is greener where you water it',
      'Better an oops than a what if',
      'If you see someone without a smile - give them one of yours',
      'Kindness is never out of fashion',
      'If the plan does not work change the plan but never the goal',
      'Do it for the future you!',
      'Live simply, bloom wildly',
      'Every day is a fresh start',
      'Make today so awesome yesterday gets jealous',
      'Stop wishing. Start doing.',
      'Falling down is a part of life. Getting back is living',
      'A journey of a thousand miles begins with a single step',
      'Do not hurry. Be happy',
      'Find a way or make one!',
      'Do not stress about things you can not control',
      'It is okay to do things alone. It is okay to vibe by yourself',
      'When you focus on the good, the good increases',
      'Smile while you still have teeth!',
      'Your dreams do not expire!',
      'Your potential is endless',
      'Failure is success in progress',
      'Great things never came from comfort zones...',
      'Your self worth is not defined by others',
      'Do all things with love',
      'You are capable of amazing things!',
      'Dream big and create your own story',
      'Trust the power of new beginnings',
      'When you love who you are, it is easier to love people for who they are',
      'Throw kindness around like confetti',
      'No one is you and that is your power',
      'Beauty comes from the inside',
      'Tomorrow is always fresh with no mistakes in it yet',
      'Find your tribe and love them hard',
      'Creativity is intelligence having fun',
      'You can do anything you set your mind to',
      'Your life does not get better by chance. It gets better by change',
      'Always be yourself unless you can be unicorn. Then always be a unicorn',
      'Sometimes you have to take a step back, in order to make a bigger jump',
      'One day or day one [you decide]',
      'Do not believe everything you think',
      'Today is a good day to have a great day!',
      'Stay positive. Good things will happen',
      'Be bold ir italic, never regular',
      'Love the greatest gift of all',
      'Everything will be okay in the end. If it is not okay, it is not the end',
      'Kind words can be small and simple to say but they echo in eternity',
      'Home is where your heart is',
    });
    final random = new Random();
    var i = random.nextInt(list.length);
    return list[i];
  }

// ! - Need to read from TXT. Fix!!!!
// List<String> readFromRes() {
//   List<String> names;
//   File file = File('assets/citation/citation.txt');
//   names = file.readAsLinesSync();
//   return names;
// }
}
