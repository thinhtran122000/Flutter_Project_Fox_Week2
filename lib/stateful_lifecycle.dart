/* 
Lifecycle của Stateful widget: là vòng đời trạng thái của Stateful widget. Mỗi khi khởi tạo Stateful widget đồng nghĩa 
                               với việc vòng đời của widget đó đã được khởi tạo
Stateful lifecycle:
+ createState(): Khi tạo 1 stateful widget, ngay lập tức gọi đến hàm này. Đây là hàm bắt buộc phải có
+ mounted == true: Giữa createState và initState có 1 biến mounted được gán = true. Khi hàm createState tạo lớp trạng thái,
                   buildContext được gán cho trạng thái đó. Tất cả các widget đều có thuộc tính bool this.mounted.
                   Nó sẽ trả về true nếu buildContext được gán và sẽ trả về lỗi khi gọi setState nếu 1 widget bị unmounted (ngắt kết nối).
                   Trong một số trường hợp, để đảm bảo state đã được tạo có thể dùng if(mounted){...} 
                   kiểm tra trước khi thực hiện các thao tác khác (setState,...)
+ initState(): phương thức được gọi ngay khi widget được khởi tạo 
            => chỉ gọi 1 lần duy nhất. Nó sẽ được gọi bất cứ khi nào một đối tượng mà nó phụ thuộc vào dữ liệu được gọi. 
               Ví dụ: nếu nó dựa vào một InheritedWidget
+ didChangeDependency(): được gọi ngay sau khi hàm initState() được khởi tạo 
+ build(): phương thức được gọi thường xuyên và nhiều lần. Nó bắt buộc phải trả về 1 widget (dùng để render widget)
+ didUpdateWidget(Widget oldwidget): Được gọi lại nếu widget cha thay đổi và cần rebuild lại (vì cần cung cấp dữ liệu mới cho nó)
+ setState(): phương thức thông báo rằng dữ liệu đã được thay đổi và yêu cầu widget ở buildContext cần được rebuild lại
+ deactivate(): phương thức này ít khi được sử dụng. Được gọi khi state bị xóa khỏi cây widget,
                nhưng nó có thể được gán lại cây ở một thời điểm khác (state chưa bị xóa hoàn toàn khỏi cây)
+ dispose(): được gọi khi state của widget bị xóa vĩnh viễn khỏi cây widget
+ mounted == false: state object không thể remout (không thể có state)
*/

import 'package:flutter/material.dart';
class MyStatefulLifeCycle extends StatefulWidget {
  const MyStatefulLifeCycle({super.key});

  @override
  State<MyStatefulLifeCycle> createState() => _MyStatefulLifeCycleState(); // create state
}

class _MyStatefulLifeCycleState extends State<MyStatefulLifeCycle> {
  @override
  bool get mounted => super.mounted;
  @override
  void initState() { // init state
    super.initState();
  }
  @override
  void didChangeDependencies() { // did change dependency
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) { // build
    return Container();
  }
  @override
  void didUpdateWidget(covariant MyStatefulLifeCycle oldWidget) { // did update widget
    super.didUpdateWidget(oldWidget);
  }
  @override
  void setState(VoidCallback fn) { // set state
    super.setState(fn);
  }
  @override
  void deactivate() { // deactivate
    super.deactivate();
  }
  @override
  void dispose() { // dispose
    super.dispose();
  }
}