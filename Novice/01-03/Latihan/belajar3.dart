import 'dart:math';

// 1. variable intance
// class Point {
//   num number;
//   num number2;
// }

// void main() {
//   var point = Point();
//   point.number = 4; 
//   point.number2 = 8;
//   assert(point.number == 4); 
//   assert(point.number2 == 8); 
//   print(point.number);
// } 

// 2. Method
// Instance methods
// class Point{
//   num x, y;

//   Point(this.x, this.y);

//   num distanceTo(Point other) {
//     var dx = x * other.x;
//     var dy = y + other.y;
//     return sqrt(dx * dx + dy * dy);
//   }
// }

// main(List<String> args) {
//   var point = Point(0,6);

//   num distanceTo = point.distanceTo(point);
//   print(distanceTo);

// }

// 3. Getters dan Setters
// class Rectangle {
//   num left, top, width, height;
  
//   Rectangle(this.left, this.top, this.width, this.height);

//   num get right => left + width;
//   set right(num value) => left = value - width;
//   num get bottom => top + height;
//   set bottom(num value) => top = value - height;
// }

// void main() {
//   var rect = Rectangle(3, 4, 10, 15);
//   assert(rect.left == 3);
//   rect.right = 13;
//   assert(rect.left == -8);
  
//   print("nilai left sama dengan ${rect.left}");
//   print("nilai right sama dengan ${rect.top}");
  
// }

// 4. Kelas Abstract
// void main (){
//   new B();
// }

// abstract class Aku {
//   Aku() {
//     x();
//     y();
//   }
//   x() => print('Aku.x');
//   y() => print('Aku.y');
// }

// class B extends Aku {
//   B() : super();

//   x() => print('B.x');
//   y() => print('Aku.yyyy');
// }

// Implicit interface
// class Kamu {
//   final _name;

//   Kamu(this._name);

//   String greet(String who) => 'Hello, $who. Saya adalah $_name';
// }

// class Impostor implements Kamu{
//   get _name => '';

// String greet(String who) => 'Hi $who. Apakah kamu tau saya siapa ?';

// }

// String GreetOmbob(Kamu papua) => papua.greet('Kamu');

// void main() {
//   print(GreetOmbob(Kamu('kamu')));
//   print(GreetOmbob(Impostor()));
// }

// 5. Mixin
// class Posisi {
//   int x;
//   int y;

//   double distanceTo(Posisi lain){
//     var dx = lain.x - y;
//     var dy = lain.y - x;
//     return sqrt(dx * dx + dy * dy);
//   }
// }

// class Square {
//   int berat;
//   int tinggi;

//   int get area => berat * tinggi;
// }

// class Squareview extends Square with Posisi {}

// main() {
//   var origin = new Posisi ()
//   ..x = 0
//   ..y = 8;

//   var square = new Squareview ()
//   ..x = 0
//   ..y = 0
//   ..berat = 100
//   ..tinggi = 100;

// print(square.distanceTo(origin));
// print(square.area);
// }
