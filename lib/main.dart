import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/binding.dart';

import 'counter_controller.dart';

void main(){
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(375, 812),
      child: const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Coundown(),
      ),
    );
  }
}
class Coundown extends StatefulWidget {
  const Coundown({super.key});

  @override
  State<Coundown> createState() => _CoundownState();
}

class _CoundownState extends State<Coundown> {
  final _counter = Get.put(Counter_Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Encreament or Decrement',style: TextStyle(fontSize: 25.sp),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${_counter.conter}',style:
            TextStyle(fontSize: 50.sp),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: _counter.decrement,
                    child: const Icon(Icons.minimize),
                ),
                SizedBox(width: 20.w,),
                ElevatedButton(
                    onPressed: _counter.increment,
                    child: const Icon(Icons.add),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: _counter.reset,
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
