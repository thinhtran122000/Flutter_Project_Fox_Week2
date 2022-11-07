/*
Trong việc tạo ra 1 app, truyền dữ liệu là 1 điều bắt buộc và ta cần phải truyền dữ liệu 
vào một widget nào đó cần thiết trên 1 cây để hiển thị dữ liệu ra màn hình
Ví dụ, để hiển thị một dữ liệu String và xuất ra màn hình dòng chữ "Hello Fox" thì ta phải truyền 
dữ liệu đó vào constructor của từng lớp widget được tạo ra. Thứ tự các widget để hiển thị ra màn hình như sau
 -> MyApp() -> MaterialApp() -> Scaffold() -> Center() -> Text()

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  String data = 'Hello Fox'; // đây là data sẽ được truyền xuống widget con

  @override
  Widget build(BuildContext context) {
    return Scaffold(              truyền data `counter` từ widget MyHomePage xuống MyCenterWidget
      body: MyCenterWidget(data: data),
    );
  }
}

class MyCenterWidget extends StatelessWidget {
  const MyCenterWidget({Key? key, required this.data,}) : super(key: key);


  final String data;           data này vô nghĩa vì đúng bản chất thì MyCenterWidget ko cần nó

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyText(data: data),    tiếp tục truyền data từ widget MyCenterWidget xuống MyText
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key, required this.data}) : super(key: key);
  final String data;               chỉ có MyText mới thật sự cần data này
  @override
  Widget build(BuildContext context) {
    return Text('Tui là widget Text. Data của tui hiện tại là: $data');
  }
}

Làm như này rất phức tạp và rất vô nghĩa vì các giai đoạn trên chỉ mới hiển thị cho việc truyền dữ liệu (còn rất nhiều công việc khác)
Cho nên flutter đã tạo ra 1 widget mang tên Inherited widget để giải quyết vấn đề này
Inherited widget là một nơi lưu trữ, cung cấp cũng như chia sẻ dữ liệu cho các widget con trong 1 widget tree.
Tất cả widget con của InheritedWidget đều có thể truy cập vào InheritedWidget để lấy data. Tức là từ vị trí InheritedWidget,
ta không cần thiết phải truyền data xuống từng 1 widget con một nữa mà Widget con ở bất kỳ vị trí nào trên widget tree muốn lấy data từ InheritedWidget,
sẽ chạy thẳng lên lấy data mà nó muốn từ InheritedWidget luôn. 



*/
/*



*/




import 'package:flutter/material.dart';

// class MyInheritedWidget extends InheritedWidget {
//   final String data;
//   const MyInheritedWidget({
//     Key? key,
//     required Widget child,
//     required this.data,
//   }) : super(key: key, child: child);

//   static MyInheritedWidget of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
//   }
  // @override
  // bool updateShouldNotify(MyInheritedWidget oldWidget) =>
  //     data != oldWidget.data;
// void main(){
//   runApp(const MyApp());
// }

class MyInheritedWidget extends InheritedWidget {
  // 1
  const MyInheritedWidget({super.key, required Widget child, required this.data}) : super(child: child);
  // 2
  final String data;
  // 3
  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return false;
  }
  // 4
  static MyInheritedWidget of(BuildContext context){
  // 5
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyInheritedWidget(
      //   data: 'Hello',
      //   child: MyHomePage(),
      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final inheritedWidget = MyInheritedWidget.of(context).data;
    return Scaffold(
      appBar: AppBar(
        title: const Text('',
          // inheritedWidget,
        ),
      ),
    );
  }
}
