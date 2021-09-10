import 'package:math_expressions/math_expressions.dart';

RegExp regExp = RegExp("[+-/×]");
RegExp regExp2 = RegExp("[()]");
Function addChar = (String s, String s2) => s += s2;
Function checkIsCharAndAdd =
    (String s, String s2) => regExp.hasMatch(s[s.length - 1]) ? s : s += s2;

Map buttonNames0 = <String, Function>{
  'C': (String s, String s2) => s = '',
  'CA': (String s, String s2) => s = '',
  '<': (String s, String s2) => s.substring(0, s.length - 1),
  '/': checkIsCharAndAdd,
};
Map buttonNames1 = <String, Function>{
  '7': addChar,
  '8': addChar,
  '9': addChar,
  '×': checkIsCharAndAdd,
};
Map buttonNames2 = <String, Function>{
  '4': addChar,
  '5': addChar,
  '6': addChar,
  '-': checkIsCharAndAdd,
};
Map buttonNames3 = <String, Function>{
  '1': addChar,
  '2': addChar,
  '3': addChar,
  '+': checkIsCharAndAdd,
};
Map buttonNames4 = <String, Function>{
  '( )': (String s, String s2) {
    var w = s.lastIndexOf(regExp2);
    if (w != -1) {
      (s[w] == '(') ? s += ')' : s += '(';
    } else {
      s += '(';
    }
    return s;
  },
  '0': addChar,
  '.': (String s, String s2) {
    var pos = s.lastIndexOf('.');
    String result;
    if (pos != -1) {
      result = (regExp.hasMatch(s.substring(pos + 1, s.length))) ? s += '.' : s;
    } else {
      result = s += '.';
    }
    return result;
  },
  '=': (String s, var b) {
    try {
      ContextModel cm = ContextModel();
      print(s);
      String s2 = s.replaceAllMapped(RegExp('[0-9][(]'),
          (match) => "${match.group(0)[0]}×${match.group(0)[1]}");
      print(s2);
      String s3 = s2.replaceAll('×', '*');
      print(s3);
      Expression exp = b.parse(s3);
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      s3 = eval.toString();
      return s3;
    } catch (e) {
      print(e);
      //TODO show massage 'bad expression'
      return 'bad expression';
    }
  },
};

List rowList = [
  buttonNames0,
  buttonNames1,
  buttonNames2,
  buttonNames3,
  buttonNames4
];
