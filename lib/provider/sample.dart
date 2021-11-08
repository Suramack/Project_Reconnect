import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reconnect/provider/service.dart';

class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TestService testService = Provider.of<TestService>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          Consumer<TestService>(
              builder: (context, service, _) => Text(service.value.toString())),
          ElevatedButton(
            child: Text('click me'),
            onPressed: () {
              testService.valueChange(3);
            },
          ),
          Consumer<TestService>(
            builder: (context, service, _) => Text(''),
          )
        ],
      ),
    );
  }
}
