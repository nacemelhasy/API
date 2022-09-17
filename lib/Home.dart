import 'package:api/Getx.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

init cnot = Get.put(init());

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<init>(
      init: init(),
      builder: (_) {
        return Scaffold(
            body: cnot.loadData? ListView.separated(
            separatorBuilder: ((context, index) => Divider()),
            itemCount: cnot.data!.data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('${cnot.data!.data[index].title}'),
                    Text('${cnot.data!.data[index].content}'),
                  ],
                ),
              );
            },
          ):  Center(child: CircularProgressIndicator()));
      }
    );
       
  }
}
