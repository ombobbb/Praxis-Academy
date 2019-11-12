// insertionsort
var A =[3, 6, 4, 100, 1000, 100000];
main(){
for(int i = 1; i <= A.length-1; i++){
  var key =A[i];
  int j = i;
  while (j > 0 && A[j-1] > key){
    A[j]= A[j-1];
    j--;
    }
  A[j] =key;
    }print(A);
}


// Kasus 2
