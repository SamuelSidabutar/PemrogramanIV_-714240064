import 'package:flutter/material.dart';
import 'bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const DynamicBottomNavbar(),
    );
  }
}

// Widget Latihan (TextField, Switch, Radio, Checkbox)
class MyInput extends StatefulWidget {
  const MyInput({super.key});

  @override
  State<MyInput> createState() => MyInputState();
}

class MyInputState extends State<MyInput> {
  final TextEditingController _controller = TextEditingController();
  bool lightOn = false;
  String? language;
  bool agree = false;

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Widget'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // A. TextField
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your Name',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Hello, ${_controller.text}'),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            const Divider(),

            // C. Switch
            SwitchListTile(
              title: const Text('Light Status'),
              value: lightOn,
              onChanged: (bool value) {
                setState(() {
                  lightOn = value;
                });
                _showSnackbar(lightOn ? 'Light On' : 'Light Off');
              },
            ),
            const Divider(),

            // D. Radio
            const Text('Choose Language:', style: TextStyle(fontWeight: FontWeight.bold)),
            RadioListTile<String>(
              title: const Text('Dart'),
              value: 'Dart',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                });
                _showSnackbar('Selected: $language');
              },
            ),
            RadioListTile<String>(
              title: const Text('Kotlin'),
              value: 'Kotlin',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                });
                _showSnackbar('Selected: $language');
              },
            ),
            RadioListTile<String>(
              title: const Text('Swift'),
              value: 'Swift',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                });
                _showSnackbar('Selected: $language');
              },
            ),
            const Divider(),

            // E. Checkbox
            CheckboxListTile(
              title: const Text('Agree / Disagree'),
              value: agree,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                setState(() {
                  agree = value!;
                });
                _showSnackbar(agree ? 'Agreed' : 'Disagreed');
              },
            ),
          ],
        ),
      ),
    );
  }
}