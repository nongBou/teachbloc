import 'package:day4/components/bottombar.dart';
import 'package:day4/view/auth/widget/textbox.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController ctluser = TextEditingController();
  TextEditingController ctlpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("User name"),
            ),
            cusTomTextbox(ctl: ctluser),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Password"),
            ),
            cusTomTextbox(ctl: ctlpassword),
            const SizedBox(
              height: 50,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: loginFunction,
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      )),
                )),
          ],
        ),
      ),
    );
  }

  loginFunction() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const CustomBottombar();
    }));
  }
}
