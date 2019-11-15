import 'dart:async';

Future<String> firstAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "----";
}

Future<String> secondAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "---------";
}


Future<String> fourAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "----------------";
}

Future<String> fiveAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "---------------------------";
}

Future<String> sixAsync() async {
  await Future<String>.delayed(const Duration(seconds: 3));
  return "---------------------------------------------";
}
void main() async {
  var f = await firstAsync();
  print(f);
  var s = await secondAsync();
  print(s);
  var b = await fourAsync();
  print(b);
  var c = await fiveAsync();
  print(c);
  var z = await sixAsync();
  print(z);
  print('tangga-tangga menggapai mimpiii wkwk!');
  }