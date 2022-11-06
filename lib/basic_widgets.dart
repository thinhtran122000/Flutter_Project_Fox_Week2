/*
- Text: Là 1 widget dùng để hiển thị dữ liệu, thường là kiểu dữ liệu String
  + String data: Hiển thị text
  + Locale locale:
  + int maxLines: số dòng tối đa để hiển thị text. Nếu text vượt quá số dòng đã cho, nó sẽ bị cắt bớt
  + TextOverflow overflow:
  + Color selectionColor:
  + String semanticsLable:
  + bool softWrap:
  + StrutStyle strutStyle:
  + TextStyle style: design cho text (kiểu text: bold,italic; màu text: red,green,...; kích cỡ text; khoảng cách giữa các kí tự (letterSpacing))
  + TextAlign textAlign: vị trí của text nằm ở đâu theo chiều ngang
  + TextDirection textDirection: định hướng của text (left to right hoặc right to left)
  + TextHeightBehavior textHeightBehavior:
  + double textScaleFactor:
  + InlineSpan textSpan:
  + TextWidthBasic textWidthBasic:

- Scaffold: Là 1 cấu trúc giao diện của Material designer, bao gồm: 
  + Color backgroundColor: màu của nền
  + Widget body: nội dung chính của Scaffold
  + PreferSizeWidget appBar: chứa các widget thuộc lớp PreferSizeWidget
  + Widget body: chứa các widget, phần chính của Scaffold
  + Widget bottomNavigationBar: chứa các widget hoặc thanh điều hướng ở dưới màn hình 
  + Widget bottomSheet: phần giao diện ở dưới gần với bottom navigation bar
  + Widget drawer: giao diện mở phía bên trái, thường được ẩn
  + Widget endDrawer: giao diện mở phía bên phải, thường được ẩn
  + Color drawerScrimColor: màu của phần che giao diện chính khi mở drawer
  + Double drawerEdgeDragWidth: kích thước của vùng có thể kéo drawer ra trên màn hình
  + Widget floatingActionButton: là widget được hiển thị mặc định ở dưới góc phải dưới màn hình, giống với button và có thể custom 
  + FloatingActionButtonAnimator floatingActionButtonAnimator:
  + FloatingActionButtonLocation floatingActionButtonLocation: Vị trí của floating action button


- AppBar: được xem là thanh tool bar hiển thị ở trên đầu màn hình 
  + Widget title: Tiêu đề của app bar, có thể custom
  + double titleSpacing: khoảng cách xung quanh tiêu đề. nó được áp dụng kể cả không có leading và action 
  + TextStyle titleTextStyle: giống với textStyle trong widget Text
  + TextStyle toolbarTextStyle: giống với textStyle trong widget Text (chỉ dành cho leading và action, không dùng cho title)
  + List<Widget> action: danh sách các widget được hiển thị sau title
  + IconThemeData actionsIconTheme: dùng để điều chỉnh kích thước, màu, opacity (hiển thị rõ hoặc mờ) của icon được hiển thị trong actions
  + Widget leading: Button bên trái của app bar. Khi sử dụng drawer hoặc dùng navigator, button này có thể được thay bằng button menu hoặc button back
  + bool automaticallyImplyLeading: nếu như giá trị = true => nút này được sử dụng trong app bar, nếu như giá trị = false => không thể sử dụng
  + double leadingWidth: độ rộng của widget leading
  + Color backgroundColor: màu của app bar
  + PreferSizeWidget bottom: widget hiển thị dưới app bar (thường là DefaultTabBar - TabBarView, TabBar - TabBarView - TabBarViewController,AppBar)
  + bool centerTitle: tiêu đề của app bar có được nằm giữa hay không
  + double elevation: làm cho app bar như được nổi lên trên
  + bool excludeHeaderSemantics: 
  + Widget flexibleSpace: tạo 1 widget nằm sau app bar và tab bar. Độ cao của nó bằng với độ cao tổng thể của app bar
  + Color foregroundColor: màu của app bar được hiển thị nằm đè lên các thành phần chứa trong nó
  + IconThemeData iconTheme: thiết kế cho cả leading và action widget (color, opacity, size, )
  + ScrollNotificationPredicate notificationPredicate:
  + Size preferredSize: tổng độ cao của app bar và độ cao của bottom
  + SystemUiOverlayStyle systemOverlayStyle: kiểu hiển thị của phần trên cùng của app bar (có 2 mode dark (mặc định) và light)
  + double toolbarHeight: độ cao của app bar
  + double toolbarOpacity: độ mờ của app bar
  + Color shadowColor: màu của phần bóng app bar
  + ShapeBorder shape: điều chỉnh hình dạng của app bar (RoundedRectangleBorder(), CircleBorder(), ContinuousRectangleBorder(), BeveledRectangleBorder())
  + bool primary:
  + double scrolledUnderElevation:
  + Color surfaceTintColor: 


- FlutterLogo: là 1 widget hiển thị logo của flutter và tên Flutter 
  + Curve curve: đường cong cho hoạt ảnh của logo khi thuộc tính style và thuộc tính textColor thay đổi 
  + Duration duration: Thời gian của hoạt ảnh khi thuộc tính style và thuộc tính textColor thay đổi 
  + double size: kích thước của logo
  + FlutterLogoStyle style: Kiểu hiển thị của logo(logo hoặc cả chữ lẫn logo), được set mặc định là chỉ hiển thị logo
  + Color textColor: dùng để điều chỉnh màu của text "Flutter" khi style có kiểu là FlutterLogoStyle.horizontal hoặc FlutterLogoStyle.stacked

- Placeholder: là 1 widget dùng để hiển thị vị trí mà 1 widget nào đó sẽ được thêm vào (cái này tiện lợi cho việc thiết kế bản vẽ UI mẫu)
  + Widget child: widget con bên trong nó
  + Color color: màu của placeholder
  + double fallbackHeight: độ cao của placeholder khi placeholder đang nằm trong tình huống có độ cao không giới hạn
  + double fallbackWidth: độ rộng của placeholder khi placeholder đang nằm trong tình huống có độ rộng không giới hạn
  + double strokeWidth: độ rộng của đường viền trong placeholder

- Image: là 1 widget dùng để hiển thị hình ảnh
  Constructor:
  + Image(_,_,...), Image.asset(_,_,...), Image.file(_,_,...), Image.memory(_,_,...), Image.network(_,_,...)
  Property:
  + AlignmentGeometry alignment: xác định xem hình ảnh sẽ nằm ở đâu
  + Color color: màu dùng để kết hợp với hình
  + BlendMode colorBlendMode: dùng để kết hợp màu với hình nếu thuộc tính Color color không null
  + ImageErrorWidgetBuilder errorBuilder: dùng để hiển thị trạng thái khi có lỗi trong quá trình hiển thị hình ảnh (call back function)
  + FilterQuality filterQuality: chất lượng của hình ảnh (low, medium, high, none)
  + Box fit: hình được hiển thị như thế nào (fill, fillWidth, filHeight,...)
  + double width: độ rộng của hình ảnh
  + double height: độ cao của hình ảnh
  + ImageFrameBuilder frameBuilder: là thuộc tính chịu trách nhiệm cho vùng để hiển thị hình ảnh nếu hình ảnh chưa được hiển thị hoặc hiển thị 1 cách bất đồng bộ.
                                    Thuộc tính này trả về 1 widget. Ta có thể sử dụng thuộc tính này để tạo animation cho vùng hiển thị hình ảnh (dùng chung với loadingBuilder) (call back function)
  + ImageLoadingBuilder loadingBuilder: hiện thị trạng thái hình ảnh đang được hiển thị (call back function)
  (ví dụ hiển thị CircularProgressIndicator(), LinearProgressIndicator(),...)
  + ImageProvider<Object> image: hình ảnh được hiển thị từ đâu 
    (AssetsImage(từ file assets), NetworkImage(từ mạng), 
    FileImage(từ thư mục gallery hoặc camera),
    MemoryImage(từ thanh ram được chuyển đổi qua lớp Uint8List)_
  + bool isAntiAlias: giá trị = true => khử răng cưa cho hình ảnh, giá trị = false => không khử răng cưa
  + bool matchTextDirection: hình ảnh có thể được vẽ theo chiều hướng chỉ định hay không.
                             Giá trị = true => khi dùng TextDirection.ltr sẽ trả ra hình ảnh được vẽ trái sang phải
                                            => khi dùng TextDirection.rtl sẽ trả ra hình ảnh được vẽ phải sang trái
  + Animation<double> opacity: làm mờ hình ảnh (thêm lớp transparent)
  + Rect centerSlice:
  + bool gaplessPlayback:
  + ImageRepeat repeat: 
  + bool excludeFromSemantics:
  + String semanticLabel: 

- Icon: dùng để hiển thị icon
  + Color color: hiển thị màu của icon
  + IconData icon: icon được hiển thị (Icons)
  + List<Shadow> shadows: vẽ bóng cho icon, trả về 1 mảng các shadow
  + double size: độ lớn của icon
  + TextDirection textDirection: chiều hướng vẽ của icon
  + String semanticLabel:  

- ElevatedButton: là 1 widget dùng để nhấn vào. Đi kèm với button là function dùng để bắt sự kiện sau khi nhấn vào
  Constructor
  + ElevatedButton(_,_,_,...)
  + ElevatedButton.icon(requỉed Widget label, requỉed Widget Icon,...)
  Property
  + Widget child: widget con bên trong nó
  + Clip clipBehavior:
  + bool enable: giá trị = true => button đó có thể click vào, giá trị = false => button bị vô hiệu
  + onLongPress: bắt sự kiện khi click vào button 1 lúc lâu (call back function)
  + onPress: bắt sự kiện khi click vào button (call back function)
  + ButtonStyle style: kiểu hiển thị của button

- Container: widget này dùng để hiển thị 1 vùng trống có kích thước, màu sắc và vị trí
  + Widget child: widget con bên trong nó
  + AlignmentGeometry alignment: xác định vị trí của widget con bên trong nó
  + Clip clipBehavior:
  + Color color: màu của container
  + BoxConstraints constraints: 
  + Decoration decoration: thiết kế hiển thị cho container (color,image,...), các thiết kế ở đằng sau widget con 
  + Decoration foregroundDecoration: thiết kế hiển thị cho container (color,...), các thiết kế ở đằng trước widget con 
  + EdgeInsetsGeometry margin: độ lớn của phần bên ngoài viền của container (độ lớn của container = size + margin)
  + EdgeInsetsGeometry pading: độ lớn của phần bên trong viền của container (độ lớn của container = size + padding)
  + Matrix4 transform: ma trận chuyển đổi trước khi hiển thị container (Matrix4.rotate, Matrix4.scaled)
  + AlignmentGeometry transformAlignment:

- Row: Là 1 mảng chứa các widget được thêm vào theo chiều ngang (horizontal)
  + List<Widget> children: list các widget nằm bên trong nó
  + MainAxixAlignment mainAxixAlignment: Bố cục vị trí các widget chứa bên trong nó theo chiều hướng chính, với row là horizontal
  + CrossAxisAlignment crossAxisAlignment: Bố cục vị trí các widget chứa bên trong nó theo chiều hướng phụ, với row là vertical
  + MainAixSize mainAxisSize: Không gian trống được chiếm bao nhiêu trong row 
    (MainAxix.max sẽ lấy hết phần khoảng trống của hướng chính,
     MainAxix.min chỉ lấy đủ khoảng trống cho các widget con bên trong (giống wrap content bên android))
  + TextDirection textDirection:
  + VerticalDirection verticalDirection: thứ tự của các widget có thể thay đổi theo chiều dọc (up hoặc down)
  + TextBaseline textBaseline: Dùng chung với crossAxixAlignment.baseline, hiển thị widget con theo kiểu so le

- Column: Là 1 mảng chứa các widget được thêm vào theo chiều dọc (vertical)
  + List<Widget> children: list các widget nằm bên trong nó
  + MainAxixAlignment mainAxixAlignment: Bố cục vị trí các widget chứa bên trong nó theo chiều hướng chính, với column là vertical
  + CrossAxisAlignment crossAxisAlignment: Bố cục vị trí các widget chứa bên trong nó theo chiều hướng phụ, với column là horizontal
  + MainAixSize mainAxisSize: Không gian trống được chiếm bao nhiêu trong column
    (MainAxix.max sẽ lấy hết phần khoảng trống của hướng chính,
     MainAxix.min chỉ lấy đủ khoảng trống cho các widget con bên trong (giống wrap content bên android))
  + TextDirection textDirection:
  + VerticalDirection verticalDirection: thứ tự của các widget có thể thay đổi theo chiều dọc (up hoặc down)
  + TextBaseline textBaseline: Dùng chung với crossAxixAlignment.baseline hiển thị widget con theo kiểu so le
- SizedBox: là 1 widget giúp hiển thị 1 khoảng trống có kích thước chỉ định không có decoration. Có thể chứa các widget con nếu cần thiết
            (thường dùng để tạo khoảng cách giữa các widget)
  + Widget child: widget con bên trong nó
  + double width: độ rộng của sized box widget
  + double height: độ cao của sized box widget
- Center là widget giúp hiển thị widget con bên trong ở giữa màn hình
  + Widget child: widget con bên trong nó
  + double widthFactor: độ rộng của center. Nếu nó không được thêm vào => widthFactor = double.infinity
  + double heightFactor: độ cao của center. Nếu nó không được thêm vào => heightFactor = double.infinity
  + Lưu ý: Nếu có 1 center nằm trong 1 container => thuộc tính widthFactor và heightFactor vô hiệu khi container có kích thước cố định
*/



      // ignore: avoid_print
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyBasicWidgetsApp());
}

class MyBasicWidgetsApp extends StatelessWidget {
  const MyBasicWidgetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: const MyBasicWidgets(),
      // debugShowCheckedModeBanner: false,
    );
  }
}

class MyBasicWidgets extends StatefulWidget {
  const MyBasicWidgets({super.key});

  @override
  State<MyBasicWidgets> createState() => _MyBasicWidgetsState();
}

class _MyBasicWidgetsState extends State<MyBasicWidgets> {
  File? imageFile;
  Uint8List? imageMemory;
  @override
  void initState() {
    super.initState();
    // _tabController = TabController(length: 3,vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Container(
    //     color: Colors.black,
    //     child: const Center(
    //       widthFactor: 20,
    //       heightFactor: 20,
    //       child: Text(
    //         'gvrèwfwe',
    //         style: TextStyle(color: Colors.white),
    //       ),
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.add),
        // automaticallyImplyLeading: true,
        // actions: const [Icon(Icons.add)],
        // actionsIconTheme: const IconThemeData(color: Colors.red),
        // shadowColor: Colors.red,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(50),
        //     topRight: Radius.circular(50),
        //     bottomLeft: Radius.circular(50),
        //     bottomRight: Radius.circular(50),
        //   ),
        //   side: BorderSide(
        //     color: Colors.red,
        //     width: 5,
        //     style: BorderStyle.solid,
        //     strokeAlign: StrokeAlign.inside,
        //   ),
        // ),
        // primary: false,
        // flexibleSpace: Container(
        //   color: Colors.black,
        //   width: double.infinity,
        //   height: 10,
        // ),
        // foregroundColor: Colors.blueAccent,
        // iconTheme: const IconThemeData(color: Colors.red,opacity: 0.5,size: 50,shadows: [Shadow()]),
        // scrolledUnderElevation:5,
        // titleSpacing: 50,
        // titleTextStyle: const TextStyle(color: Colors.red),
        // surfaceTintColor:Colors.red,
        // toolbarTextStyle:const TextStyle(color: Colors.blue),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        // toolbarOpacity: 0.5,
        centerTitle: true,
        title: const Text(
          'THIS IS APPBAR WIDGET',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        // centerTitle: true,
        elevation: 20,
      ),
      drawer: const Drawer(
        child: DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          child: Text(
            'Drawer and Drawer header',
          ),
        ),
      ),
      endDrawer: const Drawer(
        child: DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          child: Text(
            'Drawer and Drawer header',
          ),
        ),
      ),
      drawerScrimColor: Colors.yellow,
      drawerEdgeDragWidth: 2000,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60,
          color: Colors.green,
          child: const Text(
            'This is bottom navigation bar of Scaffold',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 50,
        color: Colors.grey,
        child: const Text(
          'This is bottom sheet of Scaffold',
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          // textDirection: TextDirection.rtl,
          // textBaseline: TextBaseline.ideographic,
          // verticalDirection: VerticalDirection.up,
          verticalDirection: VerticalDirection.down,
          children: [
            const FlutterLogo(
              size: 50,
              textColor: Colors.lightBlue,
              style: FlutterLogoStyle.horizontal,
              duration: Duration(
                seconds: 10,
              ),
              curve: Curves.fastOutSlowIn,
            ),
            // Container(
            //   width: 100,
            //   height: 100,
            //   color: Colors.grey,
            //   child:  const Placeholder(
            //   color: Colors.lightBlue,
            //   fallbackHeight: 20,
            //   fallbackWidth: 50,
            //   strokeWidth: 5,
            //   child: Text(
            //     'This is Place holder widget',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       fontSize: 10,
            //     ),
            //   ),
            // ),
            // ),
            const Placeholder(
              color: Colors.lightBlue,
              fallbackHeight: 50,
              fallbackWidth: 50,
              strokeWidth: 5,
              child: Text(
                'This is Place holder widget',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Image(
              width: 200,
              height: 200,
              // color: Colors.green,
              // colorBlendMode: BlendMode.color,
              gaplessPlayback: true,
              errorBuilder: (context, error, stackTrace) =>
                  const Text('No image to display'),
              alignment: const Alignment(-1, 1),
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
              image: const NetworkImage(
                  'https://github.com/flutter/website/blob/main/examples/layout/lakes/step6/images/lake.jpg?raw=true'),
              opacity: const AlwaysStoppedAnimation(0.5),
              // repeat: ImageRepeat.repeat,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress == null
                      ? child
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),
              // frameBuilder: (context, child, frame, wasSynchronouslyLoaded) =>
              //     wasSynchronouslyLoaded
              //         ? child
              //         : const Image(
              //             image: NetworkImage(
              //                 'https://github.com/flutter/website/blob/main/examples/layout/lakes/step6/images/lake.jpg?raw=true'),
              //           ),
            ),

            // Image.asset(
            //   'images/lake.jpg',
            //   width: 200,
            //   height: 100,
            // ),

            // Image.network(
            //   'https://github.com/flutter/website/blob/main/examples/layout/lakes/step6/images/lake.jpg?raw=true',
            //   loadingBuilder: ((context, child, loadingProgress) =>
            //       loadingProgress == null
            //           ? child
            //           : const Center(
            //               child: LinearProgressIndicator(),
            //             )),
            //   width: 200,
            //   height: 100,
            // ),
            // Image.network(
            //   'https://github.com/flutter/website/blob/main/examples/layout/lakes/step6/images/lake.jpg?raw=true',
            //   loadingBuilder: ((context, child, loadingProgress) =>
            //       loadingProgress == null
            //           ? child
            //           : const Center(
            //               child: CircularProgressIndicator(),
            //             )),
            //   width: 200,
            //   height: 100,
            // ),
            // image != null
            //     ? Image.file(
            //         image!,
            //         width: 300,
            //         height: 200,
            //       )
            //     : Image.asset(
            //         'images/lake.jpg',
            //         width: 200,
            //         height: 100,
            //       ),
            // imageMemory != null
            //     ? Image.memory(
            //         imageMemory!,
            //         width: 300,
            //         height: 200,
            //       )
            //     : Image.asset(
            //         'images/lake.jpg',
            //         width: 200,
            //         height: 100,
            //       ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.baseline,
              // textBaseline: TextBaseline.ideographic,
              verticalDirection: VerticalDirection.down,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                  // semanticLabel: 'This is Icon',
                  textDirection: TextDirection.rtl,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        blurRadius: 2.0),
                    Shadow(
                        color: Colors.blue,
                        offset: Offset(2, 2),
                        blurRadius: 2.0),
                    Shadow(
                        color: Colors.green,
                        offset: Offset(2, 2),
                        blurRadius: 2.0),
                  ],
                ),
                Text(
                  'This is Icon',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'This is Icon 2',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Icon(
                  Icons.share,
                  color: Colors.lightBlue,
                  size: 30,
                  // semanticLabel: 'This is Icon',
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
            Container(
              width: 200,
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: ElevatedButton(
                onPressed: pickMemoryImage,
                child: const Text(
                  'This is Elevated button widget',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            // Container(
            //       decoration: const BoxDecoration(
            //         color: Colors.green,
            //       ),
            //       child: const Center(
            //         widthFactor: 2,
            //         heightFactor: 2,
            //         child: Text('Hello'),
            //       ),
            //     ),

            //  ElevatedButton.icon(
            //   onPressed: null,
            //   icon: const Icon(
            //     Icons.share,
            //     color: Colors.red,
            //     size: 50,
            //     // semanticLabel: 'This is Icon',
            //     textDirection: TextDirection.ltr,
            //   ),
            //   label: const Text(
            //     'This is Elevated button widget',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(fontSize: 20),
            //   ),
            // ),
            Container(
              width: double.infinity,
              height: 200,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.lightBlue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'This is Container widget',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future pickFileImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        imageFile = imageTemporary;
      });
    } on PlatformException catch (e) {

      print(e);
    }
  }

  Future pickMemoryImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        imageMemory = imageTemporary.readAsBytesSync();
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }
}
