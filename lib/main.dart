/*
Để tạo ra UI cần có 3 yếu tố chính là widget, element và renderObject
+ Widget là 1 bản vẽ của UI (VD: giống bản vẽ thiết kế nhà cửa) 
+ Element được hiểu là các mảng xanh (blue print mở trong widget tree inspector lúc run app) dùng để đại diện cho các mảnh UI ở 1 vị trí nào đó trên cây. 
+ RenderObject là thành phần dùng để căn chỉnh kích thước, tô vẽ cho mảnh UI thông qua các thuộc tính mà mảnh UI đó cung cấp
runApp(MyApp()) là 1 function dùng để triển khai widget được cung cấp và hiển thị nó lên màn hình. MyApp() ở đây chính là root widget tree = root element = root renderobject
Khi tạo ra 1 widget, nếu widget đó là Stateless widget sẽ tạo ra Stateless element, Stateful widget sẽ tạo ra Stateful element
Mỗi widget trong flutter thường có các thuộc tính riêng biệt khác nhau
VD:
  Text({String data, textStyle(color, fontsize, font weight,...), textAlign,...})
  - data là chuỗi dữ liệu để hiển thị lên màn hình 
  - textStyle là kiểu của data hiển thị ra(màu của chữ, kích cỡ chữ, kiểu chữ,...)
  - textAlign: data truyền vào được căn chỉnh như thế nào (căn trái, căn phải, căn giữa,...)
Có 2 loại widget trong flutter là Stateless widget và Stateful widget
+ Stateless widget: Là dạng widget tĩnh không có state. Nói cách khác là khi chạy ứng dụng runtime, trạng thái của dạng widget này không hề thay đổi (imutable)
+ Stateful widget: Là dạng widget động có state. Trạng thái của dạng widget này sẽ thay đổi khi chạy ứng dụng runtime (mutable)



*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Scaffold(
      //   body: _buildWidgets(),
      // ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = 'Hello';
  int counter = 0;
  int max = 5;

  void incrementCounter() {
    if(mounted==true){
      setState(() {
        counter++;
      // if (counter == max) {
        // showGeneralDialog(
        //   context: context,
        //   barrierLabel: "Barrier",
        //   barrierDismissible: true,
        //   // barrierColor: Colors.black.withOpacity(0.5),
        //   // transitionDuration: const Duration(milliseconds: 700),

        //   pageBuilder: (_, __, ___) {
        //     return Center(
        //       child: Container(
        //         height: 200,
        //         width: 200,
        //         decoration: const BoxDecoration(color: Colors.white),
        //         child: Container(
        //           height: 80,
        //           width: 80,
        //           decoration: const BoxDecoration(color: Colors.red),
        //           child: const Text(
        //             'This is max',
        //           ),
        //         ),
        //       ),
        //     );
        //   },
        // );
        // max += 5;
      // }
      });
    }
  }

  void changeName() {
    setState(() {
      name = 'Hello Fox';
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // const Text(
              //   'You have pushed the button this many times:',
              // ),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: TextButton(
                  // style: ButtonStyle(minimumSize: ),
                  onPressed: incrementCounter,
                  child: const Text(
                    'CLICK',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // body: _buildWidgets(),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
      );
}

Widget _buildWidgets() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: double.infinity,
          height: 300,
          child: Image(
            image: NetworkImage(
                'https://github.com/flutter/website/blob/main/examples/layout/lakes/step6/images/lake.jpg?raw=true'),
          ),
        ),
        SizedBox(
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
                      children: const [
                        Text(
                          'Oeschinene Lake Campground',
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Kandersteg, Switzerland',
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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.red[500],
                          size: 20,
                        ),
                        const Text(
                          '41',
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ]),
                ),
              ),
              // const Text('Text',textDirection: TextDirection.rtl,textAlign: TextAlign.center,)
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: SizedBox(
                  width: 50,
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
                        style: TextStyle(color: Colors.blue[400]),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  width: 50,
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
                      Text(
                        'ROUTE',
                        style: TextStyle(color: Colors.blue[400]),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  width: 50,
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
                      Text(
                        'SHARE',
                        style: TextStyle(color: Colors.blue[400]),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          // height: double.infinity,
          height: 250,
          padding: const EdgeInsets.all(30),
          // color: Colors.black,
          child: const Text(
              'Lake Osechinen lies at the foot off the Bluemlisalp in thefweeeeeeeeeeeeeeeeeeee'),
        )
      ],
    ),
  );
}
