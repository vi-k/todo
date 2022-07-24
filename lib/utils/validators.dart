import 'package:intl/intl.dart';

bool notEmptyValidator(String value) => value.isNotEmpty;

DateTime? tryParseDate(String value) {
  try {
    return DateFormat.yMd().parse(value);
  } on FormatException {
    return null;
  }
}

DateTime? tryParseTime(String value) {
  try {
    return DateFormat.Hm().parse(value);
  } on FormatException {
    return null;
  }
}

bool dateValidator(String value, {bool maybeEmpty = false}) {
  if (maybeEmpty && value.isEmpty) return true;

  return tryParseDate(value) != null;
}

bool timeValidator(String value, {bool maybeEmpty = false}) {
  if (maybeEmpty && value.isEmpty) return true;

  return tryParseTime(value) != null;
}
