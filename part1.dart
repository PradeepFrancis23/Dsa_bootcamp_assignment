void main(){
  print("Pradeep");
  List<int> number = [2,4,2,5,8,7,4,10];

  print("This is the list: ${number.join(',')}");



   List<String> countries = ['USA', 'Canada', 'Mexico', 'Brazil'];
   countries.add('India');
  
  print(countries.reversed.join(','));

  print(countries.elementAt(4));
  
  // Print the whole list as a single string with commas
  print(countries.join(', '));
}