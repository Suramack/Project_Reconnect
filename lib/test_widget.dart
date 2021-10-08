import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 400,
            ),
            ElevatedButton(
              onPressed: () =>
//The showModelBottomSheet Will push a sheet to our page for show widgets and actions
                  showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) =>
                    //The DraggableScrollableSeet will drag top to bottom or vise versa with respect to user interaction.
                    DraggableScrollableSheet(
                  initialChildSize: .6,
                  maxChildSize: .9,
                  minChildSize: .2,
                  builder: (context, controller) =>
                      //The customsheet method will return a widget with a child CustoomScrollView to Drag our DraggableScrollableSheet.
                      customSheet(context, controller),
                ),
              ),
              child: const Text('clickme'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget customSheet(BuildContext context, ScrollController controller) {
  return Container(
    alignment: Alignment.bottomLeft,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
// While use the CustomScrollView have an SliverAppBar for set our bar to constant, ie, the appBar will not move while dragging
    child: CustomScrollView(
      controller: controller,
      slivers: [
        SliverAppBar(
          shadowColor: Colors.grey.shade100,
          elevation: 1,
          pinned: true,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Container(
              margin: const EdgeInsets.only(bottom: 45),
              width: 60,
              height: 4,
              color: Colors.grey.shade300),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey.shade200),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              for (int i = 0; i < 10; i++)
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green[i * 100],
                ),
            ],
          ),
        )
      ],
    ),
  );
}
