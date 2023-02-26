import 'package:flutter/material.dart';
import 'package:ib_home/Widgets/textInputField.dart';

class SiginAuthUI extends StatefulWidget {
  const SiginAuthUI({Key? key}) : super(key: key);

  @override
  State<SiginAuthUI> createState() => _SiginAuthUIState();
}

class _SiginAuthUIState extends State<SiginAuthUI> {
  final TextEditingController _instaNameController = TextEditingController();
  final bool success = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 0.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                    child: Text('Verify',
                        style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                    child: Text('Account',
                        style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(320.0, 175.0, 0.0, 0.0),
                    child: Text('.',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Center(
              child: Image(
                image: AssetImage("assets/insta_logo.png"),
                height: 150,
                width: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextInputField(
                  label: 'Enter your name',
                  labelController: _instaNameController),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 230),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.next_plan_rounded,
                    color: success ? Colors.green : Colors.grey,
                    size: 45,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
