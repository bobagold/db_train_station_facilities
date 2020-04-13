part of stada;

class Partial {
  /// The underlying value of this enum member.
  String value;

  Partial._internal(this.value);

  static Partial yes_ = Partial._internal("yes");
  static Partial no_ = Partial._internal("no");
  static Partial partial_ = Partial._internal("partial");

  Partial.fromJson(dynamic data) {
    switch (data) {
          case "yes": value = data; break;
          case "no": value = data; break;
          case "partial": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(Partial data) {
    return data.value;
  }
}

