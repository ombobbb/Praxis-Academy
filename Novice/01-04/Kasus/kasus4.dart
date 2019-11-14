// Generic basic
class KelasGenerik<Bob> {
  Bob ob;

  KelasGenerik(this.ob);

  Bob getob() {
    return ob;
  }

  showType() {
    print("Type of T is " + Bob.toString());
  }
}

void main() {
  KelasGenerik<int> iOb = new KelasGenerik<int>(88);
  iOb.showType();

  int v = iOb.getob();
  print("value: " + v.toString());

  KelasGenerik<String> strOb = new KelasGenerik<String>("Tes");
  strOb.showType();

  String str = strOb.getob();
  print("value: " + str);
}