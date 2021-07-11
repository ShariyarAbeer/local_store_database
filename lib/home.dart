import 'package:flutter/material.dart';
import 'userInfo.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController tx = TextEditingController();

  @override
  void initState() {
    super.initState();

    init();
  }

  Future init() async {
    final name = await UserInfo.getUsername() ?? '';
    setState(() {
      this.tx.text = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: tx,
              decoration: InputDecoration(hintText: "Enter Text"),
            ),
            ElevatedButton(
              onPressed: () async {
                await UserInfo.setUsername(tx.text);
                print(tx.text);
              },
              child: Text("text"),
            ),
          ],
        ),
      ),
    );
  }
}
