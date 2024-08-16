class TimeZone {
  String value;
  String abbr;
  int offset;
  bool isdst;
  String text;
  List<String> utc;

  TimeZone({
    required this.value,
    required this.abbr,
    required this.offset,
    required this.isdst,
    required this.text,
    required this.utc,
  });

  factory TimeZone.fromJson(Map<String, dynamic> json) {
    return TimeZone(
      value: json['value'] as String,
      abbr: json['abbr'] as String,
      offset: json['offset'] as int,
      isdst: json['isdst'] as bool,
      text: json['text'] as String,
      utc: (json['utc'] as List<dynamic>).map((e) => e as String).toList(),
    );
  }

  @override
  String toString() =>
      "TimeZone(value: $value,abbr: $abbr,offset: $offset,isdst: $isdst,text: $text,utc: $utc)";

  @override
  int get hashCode => Object.hash(value, abbr, offset, isdst, text, utc);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeZone &&
          runtimeType == other.runtimeType &&
          value == other.value &&
          abbr == other.abbr &&
          offset == other.offset &&
          isdst == other.isdst &&
          text == other.text &&
          utc == other.utc;
}
