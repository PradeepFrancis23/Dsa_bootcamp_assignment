void main() {
  List<int> a = [3, 2, 8, 4, 1];

  // to store temp value during swap ascending descending order
  int temp;

  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a.length - 1 - i; j++) {
      if (a[j] > a[j + 1]) {
        temp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = temp;
      }

    }
  }

  for (int i = 0; i < a.length; i++) {
    print("${a[i  ]  }");
  }
 String ab = 'lamor';
 print(ab);

 List<int> abc = [2,4,5,6,87,9,0,1,10];
 print(abc.join(','));
 
}
