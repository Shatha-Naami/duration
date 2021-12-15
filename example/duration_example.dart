import 'package:duration/duration.dart';
import 'package:duration/locale.dart';

void main() {
  // => 5 days 9 hours
  printDuration(aDay * 5 + anHour * 9);

  // More examples

  final dur = Duration(
      days: 5,
      hours: 23,
      minutes: 59,
      seconds: 59,
      milliseconds: 999,
      microseconds: 999);

  // => 5 days 23 hours 59 minutes 59 seconds
  printDuration(dur);

  // => 3.455 milliseconds
  printMilliseconds(aMicrosecond * 3455);

  // => 3 seconds
  printDuration(aMillisecond * 3000);

  // => 2 seconds
  printDuration(aMillisecond * 2250);

  // => 1 day 3 hours 2 minutes
  printDuration(aMillisecond * 97320000);

  // => 5 días 9 horas
  printDuration(aDay * 5 + anHour * 9,
      abbreviated: false, locale: spanishLocale);

  // => 5d, 23h, 59m, 59s, 999ms, 999us
  printDuration(dur, abbreviated: true, tersity: DurationTersity.all);

  // => 5 whole days 9 whole hours
  printDuration(aDay * 5 + anHour * 9, spacer: ' whole ');

  // => 5 days, 9 hours, 10 minute
  printDuration(aDay * 5 + anHour * 9 + aMinute * 10, delimiter: ', ');

  // => 5 days, 9 hours and 10 minutes
  printDuration(aDay * 5 + anHour * 9 + aMinute * 10,
      delimiter: ', ', conjugation: ' and ');

  // ساعتين و ٢٠ دقيقة
  final durInMint = Duration(minutes: 130);
  printDuration(durInMint, locale: arabicLocale, conjugation: ' و ');
}
