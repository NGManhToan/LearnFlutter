import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isswitch = false;
  bool? ischeckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/einstein.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ), //Dãi phân cách tiện ích
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(1.0),
              color: Colors.amber,
              width: double.infinity, //Chiếm mọi vị trí
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isswitch ? Colors.green : Colors.blue),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text('Outlined Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is a text');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isswitch,
              onChanged: (bool newBool) {
                setState(() {
                  isswitch = newBool;
                });
              },
            ),
            Checkbox(
              value: ischeckbox,
              onChanged: (bool? newbool) {
                setState(() {
                  ischeckbox = newbool;
                });
              },
            ),
            Image.network(
                'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg'),
          ],
        ),
      ),
    );
  }
}
