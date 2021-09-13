import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive UI"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(child: LayoutBuilder(builder: (context, constrains) {
          if (constrains.maxWidth > 500) {
            return Column(
              children: [
                Row(
                  children: [buildCardWidet(), Expanded(child: buildTextWidget())],
                ),
                buildScreenUtill(),
              ],
            );
          } else {
            return Column(
              children: [
                buildCardWidet(),
                buildTextWidget(),
                buildScreenUtill(),
              ],
            );
          }
        })),
      ),
    );
  }

  buildCardWidet() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Card(
        color: Colors.purple,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }

  buildTextWidget() {
    return Text("this is example of text responsve ui ..  ");
  }

  buildScreenUtill() {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.4,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      NetworkImage("https://unsplash.com/photos/cn5SwOivMmk"))),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Text("Lorem Ipsum",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
        Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting Industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(fontSize: 16, color: Colors.grey))
      ],
    );
  }
}
