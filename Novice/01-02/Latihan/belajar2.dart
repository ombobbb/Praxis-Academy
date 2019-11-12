import 'dart:io';

//Program dasar Dart

//mentukan fungsi 
// printInterger(int aNumber, String aName, )
// {
//     print('Nomor kesukaan saya adalah $aNumber.');
//     print('Nama saya adalah $aName');
// }

// //menjalankan
// main(){
//   var aNumber = 88; //variabel angka
//   var aName = 'Albert'; //variabel nama
// printInterger(aNumber, aName);
// // printInterger(name);
// }

// //const
// main (){
// const bar = 10000000;
// const double atm = 2.00 * bar ;{
//   print(atm);
//  }
// }


// if/else if/else
// main(){
//   print("*** Nilai Pengantar akuntansi ***");

//   stdout.write("Inputkan nilai: ");
//   int nilai = int.parse(stdin.readLineSync());

//   String grade;

//   if(nilai >= 90) grade = "A+";
//   else if(nilai >= 80) grade = "A";
//   else if(nilai >= 70) grade = "B+";
//   else if(nilai >= 60) grade = "B";
//   else if(nilai >= 50) grade = "C+";
//   else if(nilai >= 40) grade = "C";
//   else if(nilai >= 30) grade = "D";
//   else if(nilai >= 20) grade = "E";
//   else grade = "F";

//   print("Grade: $grade");
  
// }

// Perulangan For
// main(){
//   stdout.write("Jumlah perulangan: ");
//   int n = int.parse(stdin.readLineSync());

//   for(int i = 1; i <= n; i++){
//     print("Perulangan ke-$i");
//   }
// }

// perulangan while
// main() {
//   int i = 0;
//   bool ulang = true;

//   while(ulang){
//     stdout.write("Apakah anda mau keluar (y/t): ");
//     String jawaban = stdin.readLineSync();

//     i++;
//     if (jawaban.toUpperCase() == "Y") ulang = false;
//   }

//   print("Total perulangan: $i");

// }

// perulangan Do/While
// main() {
//   int i = 0;
//   bool ulang = true;

//   do {
//     stdout.write("Apakah anda mau keluar (y/t): ");
//     String jawaban = stdin.readLineSync();

//     i++;
//     if (jawaban.toUpperCase() == "Y") ulang = false;
//   } while(ulang);

//   print("Total perulangan: $i");

// }

// perulangan Foreach
// main() {
//   var bahasa = ["C", "C++", "Java", "Dart", "Javascript"];

//   for(var bahasa in bahasa){
//     print(bahasa);
//   }

//   print("Total bahasa: ${bahasa.length}");
// }

// list
// main(){
//   // membuat list dengan ukuran 5
//   var languages = new List(5);

//   print("Sebutkan ${languages.length} yang ingin kamu pelajar!");

//   for(int i = 1; i < languages.length; i++){
//       stdout.write("$i. ");
//       languages[i] = stdin.readLineSync();
//   }

//   print(languages);
// }

// fungsi
// membuat fungsi luas persegi
// int luasPersegi(int sisi){
//   return sisi * sisi;
// }

// main(){
//   print("--- Program luas persegi ---");
//   stdout.write("Input panjang sisi: ");
//   int s = int.parse(stdin.readLineSync());

//   // memanggil fungsi
//   int hasil = luasPersegi(s);

//   print("Luas: $hasil");
// }