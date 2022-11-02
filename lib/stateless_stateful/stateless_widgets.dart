/*
Stateless widget là dạng widget tĩnh không có state. Nói cách khác là khi chạy ứng dụng runtime, 
trạng thái của dạng widget này không hề thay đổi (imutable)
Các loại Stateless widget thường được dùng: Text, IconButton, Icon
Stateless widget là 1 abstract class có 2 phương thức chính:
 + createElement(): Phương thức này dùng để tạo ra element sau đó gắn vào root element tree khi ta thêm vào 1 widget vào root widget tree
 + Widget build(BuildContext context): Là phương thức dùng để xây dựng các widget
 + BuildContext context: là 1 biến cho biết rằng vị trí của widget đó nằm ở đâu trên cây widget.
                         Trong flutter thường có các phương thức của widget như showDialog(), Theme.of(), Navigator.of()... 
                         Tuy nhiên chúng sẽ không thực thi được vì không biết rằng vị trí widget mà nó cần thực thi là ở đâu
                         Giả sử ta có rất nhiều màn hình => rất nhiều widget tree thì khi dùng đến các phương thức của 1 widget nào đó,
                         biến context sẽ giúp ta biết phương thức được thực thi ở widget thuộc widget tree nào  
Có 3 cách để có thể xây dựng 1 UI bằng Stateless Widget:
+ Thêm các widget theo cách thông thường
+ Tạo 1 fuction, kiểu dữ liệu trả về là 1 đối tượng Widget
+ Tạo 1 lớp kế thừa từ lớp StatelessWidget  
*/

// Tạo kiểu thông thường
import 'package:flutter/material.dart';
void main() {
  runApp(const MyStatelessWidgets());
}
class MyStatelessWidgets extends StatelessWidget {
  final String? name;
  const MyStatelessWidgets({this.name,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Dog('Lucky'),
        _buildWidgets(),
        const SizedBox(height: 8.0,),
        _buildWidgets(),
        //  Dog('Lucky'),
        const SizedBox(height: 8.0,),
        _buildWidgets(),
        //  Dog('Lucky'), 
      ],
    );
  }
}
// Tạo 1 function 
Widget _buildWidgets(){
  return const DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.lightBlue
        ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Lucky'),
        ),
      );
}
// Tạo 1 lớp khác kế thừa StatelessWidget
class StatelessWidgets extends StatelessWidget{
  final String name;
  const StatelessWidgets(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.lightBlue
        ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
        ),
      );
  }
}