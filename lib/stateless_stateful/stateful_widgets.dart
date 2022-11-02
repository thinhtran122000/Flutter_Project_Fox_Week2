/* 
Stateful widget: Là dạng widget động có state. Trạng thái của dạng widget này sẽ thay đổi khi chạy ứng dụng runtime (mutable)
Các loại Stateful widget thường được dùng: Text, Button, List View, Grid View
Khác với Stateless widget, Stateful widget cũng có 2 phương thức chính:
 + createElement():
 + createState(): 
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatefulWidgets());
}

class MyStatefulWidgets extends StatefulWidget {
  
  const MyStatefulWidgets({super.key});

  @override
  State<MyStatefulWidgets> createState() => _MyStatefulWidgetsState();
  // trả về 1 state kiểu dữ liệu là object class MyStatefulWidgets
}


class _MyStatefulWidgetsState extends State<MyStatefulWidgets> {
  String? name;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('$name',textAlign: TextAlign.center,textDirection: TextDirection.ltr,),
        FloatingActionButton(onPressed: changeName)
      ],
    );
  }
  void changeName(){
    setState(() {
      name = 'Hello Fox';
    });
  }
}


// class A{
//   String? a;
//   A(this. a);
//   A.rrr(this.a);
// }
// class B extends A{
//   // B(int a):super('gẻgrgrwef'){
//   //   a = 10;
//   // }
//   B(String super.a);
// }
// class C extends B{
//   C():super('grgre');
// }

// void main(List<String> args) {
//   var c = C();
//   print(c);
// }