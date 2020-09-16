//largest element of the list

import 'dart:io';
import 'dart:convert';
// void main() { 
//    var num_list = [11,20,1,2,3,16]; 
//    print(num_list); 
//    var max=num_list[0];
//    for(var i=0;i<num_list.length;i++){
//      if(num_list[i]>max){
//        max=num_list[i];
//      }
//    }
//   print("Max element:");
//    print(max);
// }
void main() { 
  print("Enter number of elements:"); 
    int n = int.parse(stdin.readLineSync()); 
    var num_list = new List();
    print("Enter elements:"); 
    for(var j=0;j<n;j++){
      num_list.add(int.parse(stdin.readLineSync()));
    } 
    int max=num_list[0];
     for(var i=0;i<n;i++){
     if(num_list[i]>max){
       max=num_list[i];
     }
   }
   
   print(num_list); 

  print("Max element:");
   print(max);
}
