import 'ATM.dart';

class Saldosisa extends ATMMachine {
  static double saldo = 0;
  static void setSaldo(double b) {
    saldo = b;
  }

  static double getSaldo() {
    return saldo;
  }
}