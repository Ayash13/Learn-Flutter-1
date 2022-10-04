import 'package:flutter/material.dart';

class PencetPage extends StatefulWidget {
  const PencetPage({super.key});

  @override
  State<PencetPage> createState() => _PencetPageState();
}

class _PencetPageState extends State<PencetPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How to be happy'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Actions");
              },
              icon: const Icon(Icons.info_outline_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/meme1.png'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              color: Colors.cyan,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'How to be happy',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isSwitch ? Colors.lightGreenAccent : Colors.cyan),
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
              child: const Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("This is the row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text('How to be happy'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            Image.network(
                'https://i.pinimg.com/564x/20/ed/f0/20edf0e91d6e675a5b81695ccb6799a5.jpg')
          ],
        ),
      ),
    );
  }
}
