import 'dart:async';

void createOrderMessage () async {
  print('Tunggu yaahhhh...');
  var order = await getUserOrder();
  print('Your order is: $order');
}

Future<String> getUserOrder() {
  return Future.delayed(Duration(seconds: 3), () => 'Aku sayang kamu');
}

main() async {
  countSeconds(3);
  await createOrderMessage();
}

void countSeconds(s) {
  for( var i = 1 ; i <= s; i++ ) { 
      Future.delayed(Duration(seconds: i), () => print(i));
   }
}