import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/bind.dart';

import 'controller.dart';

/*
Overall, this code demonstrates a basic implementation of GetX for state
management in Flutter, where GetBuilder is used to update the UI based on
changes to a Controller class, and the Get package is used for routing.
 */
void main() {
  runApp(GetMaterialApp(
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: () => Home(), binding: SampleBind()),
    ],
  ));
}

/*
The Home class extends StatelessWidget and is the entry point of the app. In
the build method, a Scaffold widget is returned, which has an app bar, a
body, and a floating action button.
 */
class Home extends StatelessWidget {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      /*
The body contains a Center widget with a Column widget inside. The
Column contains a GetBuilder widget, which is used to build the UI based on
the state of the Controller class. The builder method receives a callback
function that is called whenever the state of the Controller changes. In this
case, the Text widget inside the GetBuilder widget displays the value of the
count variable of the Controller class.
       */
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'clicks: ${controller.count}',
                )),
            ElevatedButton(
              child: const Text('Next Route'),
              /*
The onPressed property of the ElevatedButton widget is set to a callback
function that calls the Get.to method to navigate to the Second route when
the button is pressed.
               */
              onPressed: () {
                Get.to(Second());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(), //callback
        child: const Icon(Icons.add),
      ),
    );
  }
}

/*
The Second class is another StatelessWidget that displays the value of
count of the Controller class, which is retrieved using Get.find().
 */
class Second extends StatelessWidget {
  final Controller ctrl = Get.find();

  @override
  Widget build(context) {
    return Scaffold(body: Center(child: Text("ZZZ ${ctrl.count}")));
  }
}
/*

 */
