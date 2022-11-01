// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
// Đầu tiên khi tạo 1 project, file main.dart là file mặc định đầu tiên được tạo 
void main() { // Hàm main luôn được chạy 
  runApp(const MyApp()); // runApp() là 1 function() dùng để triển khai widget được cung cấp và hiển thị nó lên màn hình
}                        // khi runApp() được gọi lại, nó sẽ gỡ root widget tree trước đó sau đó gắn vào lại cùng với các widget đã được cung cấp thêm
/*
Có 2 loại widget trong flutter là Stateless widget và Stateful widget
+ Stateless widget: Là dạng widget tĩnh không có state. Nói cách khác là khi chạy ứng dụng runtime, trạng thái của dạng widget này không hề thay đổi (imutable)
+ Stateful widget: Là dạng widget động có state. Trạng thái của dạng widget này sẽ thay đổi khi chạy ứng dụng runtime (mutable)
Lifecycle của Stateful widget: là vòng đời trạng thái của stateful widget. Mỗi khi khởi tạo Stateful widget đồng nghĩ với việc vòng đời của widget đó luôn luôn tồn tại
Stateful lifecycle:
+ createState(): Khi tạo 1 stateful widget, ngay lập tức gọi đến hàm này. Đây là hàm bắt buộc phải có
+ mounted == true: Giữa createState và initState có 1 biến mounted được gán = true. Khi hàm createState tạo lớp trạng thái, buildContext được gán cho trạng thái đó. Tất cả các widget đều có thuộc tính bool this.mounted.
                   Nó sẽ trả về true nếu buildContext được gán và sẽ trả về lỗi khi gọi setState nếu 1 widget bị unMounted (ngắt kết nối).
                   Trong một số trường hợp, để đảm bảo state đã được tạo có thể dùng if(mounted){...} kiểm tra trước khi thực hiện các thao tác khác (setState,...)
+ initState(): phương thức được gọi ngay khi widget được khởi tạo => chỉ gọi 1 lần duy nhất. Nó sẽ được gọi bất cứ khi nào một đối tượng mà nó phụ thuộc vào dữ liệu được gọi. Ex: nếu nó dựa vào một InheritedWidget
+ didChangeDependency(): được gọi ngay sau khi hàm initState() được khởi tạo 
+ build(): phương thức được gọi thường xuyên và nhiều lần. Nó bắt buộc phải trả về 1 widget (dùng để render widget)
+ didUpdateWidget(Widget oldwidget): Được gọi lại nếu widget cha thay đổi và cần rebuild lại (vì cần cung cấp dữ liệu mới cho nó)
+ setState(): phương thức thông báo rằng dữ liệu đã được thay đổi và yêu cầu widget ở buildContext cần được rebuild lại
+ deactivate(): phương thức này ít khi được sử dụng. Được gọi khi state bị xóa khỏi cây widget, nhưng nó có thể được gán lại cây ở một thời điểm khác (state chưa bị xóa hoàn toàn khỏi cây)
+ dispose(): được gọi khi state của widget bị xóa vĩnh viễn khỏi cây widget
+ mounted == false: state object không thể remout (không thể có state)



*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: const Image(
              image: NetworkImage('https://github.com/flutter/website/blob/main/examples/layout/lakes/step6/images/lake.jpg?raw=true'),
            ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              // color: Colors.black,
              // padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 240,
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:const [
                      Text('Oeschinene Lake Campground',
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Kandersteg, Switzerland',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                        color: Colors.black,
                        ),
                      ),
                    ]),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: Row (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:<Widget> [
                      Icon(Icons.star,
                       color: Colors.red[500],
                       size: 20,
                      ),
                      const Text('41',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.black,
                        fontSize: 13,
                        ),),
                    ]),
                  ),
                ),
                // const Text('Text',textDirection: TextDirection.rtl,textAlign: TextAlign.center,)
              ],),
            ),
            Container(
              width:double.infinity,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Flexible(
                  child:SizedBox(
                    width:50,
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.call,
                          color: Colors.blue[400],
                          size: 20,
                        ),
                        Text(
                          'CALL',
                          style: TextStyle(
                            color: Colors.blue[400]
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    width:50,
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.router_outlined,
                          color: Colors.blue[400],
                          size: 20,
                        ),
                        Text('ROUTE',style: TextStyle(color: Colors.blue[400]),)
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    width:50,
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.share,
                          color: Colors.blue[400],
                          size: 20,
                        ),
                        Text('SHARE',style: TextStyle(color: Colors.blue[400]),)
                      ],
                    ),
                  ),
                ),
            ],),
            ),
            Container(
            width: double.infinity,
            // height: double.infinity,
            height: 250,
            padding: const EdgeInsets.all(30),
            // color: Colors.black,
            child: const Text('Lake Osechinen lies at the foot off the Bluemlisalp in thefweeeeeeeeeeeeeeeeeeee'),)
          ],),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //  Icon(
            //   Icons.star,
            //   color: Colors.red[500],
            //   ),
            //   const Text('41'),
            const Image(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            )
            // const Text('Hello World', style:TextStyle(fontSize: 20),),
            // const Text('Hello World', style:TextStyle(fontSize: 20),),
            // const Text('Hello World', style:TextStyle(fontSize: 20),),
            // const Text('Hello World', style:TextStyle(fontSize: 20),),
          ],
        ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
