class Spacecraft {
  String name ;
  DateTime launchDate;
  
  //Constructor
  Spacecraft(this.name, this.launchDate);
  
  //Name constructor
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear =>
    launchDate?.year; //read-only

  //Method.
void describe() {
  print('Spacecraft: $name');
  if (launchDate != null) {
    int years =
      DateTime.now().difference(launchDate).inDays ~/
          365;
    print('Launched: $launchYear ($years years ago)');
  } else {
    print('unlaunched');
    }
  }
}

