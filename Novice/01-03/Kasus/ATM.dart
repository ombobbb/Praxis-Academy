import 'dart:io';
import 'deposit.dart';
import 'withdraw.dart';
import 'balance.dart';

class ATMMachine {
  static void checkSaldo(){
    print("Saldo anda adalah ${Saldosisa.getSaldo}");
  }
  static void penarikanUang(){
    if (Saldosisa.saldo == 0) {
    print("Jumlah saldo anda sisa noll");
    print("Maaf anda tidak bisa melakukan penarikan");

    print("Anda harus melakukan pengisian saldo");
    } else if (Saldosisa.saldo <= 500){
    print("Anda tidak punya cukup uang dalam saldo bank");
    print("Cek Saldo anda untuk melihat uang anda");
    } else if (Penarikan.penarikan > Saldosisa.saldo) {
    print("Jumlah yang ingin anda tarik lebih besar dari saldo anda");
    print("Silahkan periksa jumlah yang anda masukan");
    } else {
    Saldosisa.saldo = Saldosisa.saldo - Penarikan.penarikan;
    print("Anda dapat menarik sejumlah Rp ${Penarikan.penarikan}");
    }
  }

static void simpananUang() {
  print("Anda menyetor sejumlah ${Simpanan.simpanan}");
  }
}

main() {
  int select = 0;
  int choice = 0;
  print("======================================");
  print("welcome to this simple ATM machine");
  print("======================================\n\n\n");

  do {
    do {
      print("Silahkan Pilih transaksi yang ingin anda lakukan");
      print("Tekan [1] Simpanan");
      print("Tekan [2] Penarikan");
      print("Tekan [3] Sisa Saldo");
      print("Tekan [4] Keluar\n\n");

      stdout.write("Apa yang ingin kamu lakukan?: ");
      select = int.parse(stdin.readLineSync());

      if (select > 4) {
        print("Please select correct transaction");
      } else if (select == 1) {
        stdout.write("Enter the amount of money to deposit: ");
        Simpanan.setSimpanan(double.parse(stdin.readLineSync()));

        Saldosisa.saldo = Simpanan.getSimpanan() + Saldosisa.saldo;
        ATMMachine.simpananUang();
      } else if (select == 2) {
        print(
            "To wihtdraw make sure that you have sufficient balance in your account");
        stdout.write("Enter amount of money to wihtdraw: ");
        Penarikan.penarikan = double.parse(stdin.readLineSync());
        ATMMachine.penarikanUang();
      } else if (select == 3) {
        ATMMachine.checkSaldo();
      } else if (select == 4) {
        print("Transaction exited");
        return -1;
      }
    } while (select > 4);

    do {
      print("Would you like to try another tansaction?");
      print("Press [1] Yes \t Press [2] No");
      stdout.write("Enter choice: ");
      choice = int.parse(stdin.readLineSync());

      if (choice > 2) {
        print("Please select correct choice");
      }
    } while (choice > 2);
  } while (choice == 1);
  print("Thanks");
}