// insertionsort
var A = [3, 6, 4, 100, 1000, 100000];
//main(){
// for(int i = 1; i <= A.length-1; i++){
//   var key =A[i];
//   int j = i;
//   while (j > 0 && A[j-1] > key){
//     A[j]= A[j-1];
//     j--;
//     }
//   A[j] =key;
//     }print(A);
// }

// max and min
main() {
  var myArr = [1, 2, 1, 7, 3, 5];

  maxDifference(a) {
    var maxDiff, min;
    maxDiff = a[1] - a[0];
    min = a[0];

    for (var i = 1; i < a.length; i++) {
      if (a[i] - min > maxDiff) {
        maxDiff = a[i] - min;
      }
      if (a[i] < min) {
        min = a[i];
      }
    }
    // print(maxDiff);
    // print(min);
    print("$maxDiff $min");
  }

  maxDifference(myArr);
}
