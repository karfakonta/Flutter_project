import 'dart:io';

void main(){
  print("enter a number");
  var line = stdin.readLineSync();
  int a = int.parse(line!);

  if (a<0){
    print('$a is negative number');
  }
  else if(a==0){
    print('$a is zero. neither negative nor positive');
  }
  else{
   print ('$a is positive number');
  }
}