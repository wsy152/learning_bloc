import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pushNamed('/bloc/example');
                }, child: const Text('Example')),
                ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed('/bloc/example/freezed');

                }, child: const Text('Freezed')),
              ],
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Container()),
                ElevatedButton(onPressed: () {}, child: Container()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
