import 'dart:math';
import 'spacecraft.dart';
import 'inheritance.dart';

// Hello World
main() {
  print ('BELAJAR DART');

//Variables
var name = 'Albert DR';
var year = 1997;
var age = 21;
var hobby = ['sepakbola', 'futsal', 'mancing'];
var alamat = 'Jayapura, Papua Indonesia';
bool ismenikah = false;
var image = {
  'tags': ['sepakbola'],
  'url' : 'https://cdn0-production-images-kly.akamaized.net/r3jos1PHigRysSJE_lmA4Y3WXtE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1054770/original/086206300_1539601356-035217700_1447467756-sepak-bola.jpg'
};
print('Nama saya $name. Kelahiran tahun $year.  Umur $age.');
print('Menikah: $ismenikah');
print('Alamat: $alamat');
print('image');

//Control Flow Statements
if (year >= 2001) {
 print('21st century');
} else if (year >= 1901) {
  print('20th century');
}

for (var object in hobby) {
  print(object);
}

for (int month = 1; month <= 12; month++) {
  print(month);
}

while (year < 2019) {
  year += 1;
  print(year);
}

// Functions
int fibonacci(int n){
if (n == 0 || n == 1) return n;
return fibonacci(n - 1) + fibonacci(n - 2);
}

var result = fibonacci(20);
print(result);

// Comments 
/// Document Comment
/// Classes, and their members
/// doc comments specially.
/* Comment like these are also supported */

// Import core libraries
// import 'dart:math';

// importing libraries drom external packages
//import 'package:test/test.dart';

//Spacecraft class
var voyager = Spacecraft('Albert', DateTime(1997, 12, 08));
voyager.describe();

var voyager3 = Spacecraft.unlaunched('Albert III');
voyager3.describe();

var orbiter = new Orbiter ('Ombob', DateTime(2019, 11, 11), 88);
orbiter.describe();

}



