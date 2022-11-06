/* 
Stateful widget: Là dạng widget động có state. Trạng thái của dạng widget này sẽ thay đổi khi chạy ứng dụng runtime (mutable)
Các loại Stateful widget thường được dùng: Text, Button, List View, Grid View
Khác với Stateless widget, Stateful widget cũng có 2 phương thức chính:
 + createElement(): Phương thức này dùng để tạo ra element sau đó gắn vào root element tree khi ta thêm vào 1 widget vào root widget tree
 + createState(): 
 + Widget build(BuildContext context):  Là phương thức dùng để xây dựng các widget
 + BuildContext context: là 1 biến cho biết rằng vị trí của widget đó nằm ở đâu trên cây widget.
 + State<NameOfObject extends StatefulWidget>: La
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
