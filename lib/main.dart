import 'package:flutter/material.dart';
import 'myObject.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int n = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lê Huy Mạnh - 2121050029'),
        backgroundColor: Colors.blueGrey[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Giá trị hiện tại: ${MyObject.value}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    MyObject.decrease();
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text('Giảm'),
                ),
                const SizedBox(width: 5),
                OutlinedButton.icon(
                  onPressed: () {
                    MyObject.increase();
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Tăng'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    MyObject.square();
                    setState(() {});
                  },
                  icon: const Icon(Icons.expand_less_outlined),
                  label: const Text('Luỹ thừa'),
                ),
                const SizedBox(width: 5),
                OutlinedButton.icon(
                  onPressed: () {
                    MyObject.reset();
                    setState(() {});
                  },
                  icon: const Icon(Icons.autorenew_rounded),
                  label: const Text('Reset'),
                )
              ],
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Nhập số nguyên n'),
                onChanged: (value) {
                  setState(() {
                    n = int.tryParse(value) ?? 0;
                  });
                },
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = MyObject.power(n);
                });
              },
              child: Text('Tính Lũy thừa bậc $n'),
            ),
            const SizedBox(height: 12),
            Text('Kết quả: $result'),
          ],
        ),
      ),
    );
  }
}
