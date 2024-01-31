class MyObject {
  static int _value = 0;

  static int get value => _value;

  static set value(newValue) => _value = newValue;

  static void increase() {
    _value++;
  }

  static void decrease() {
    _value--;
  }

  static void square() {
    _value = _value * _value;
  }

  static int power(int exponent) {
    int result = 1;

    for (int i = 0; i < exponent; i++) {
      result *= _value;
    }

    return result;
  }

  static void reset() {
    _value = 0;
  }
}
