import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    helperText: 'Email',
                  ) ,
                ),
                TextFormField(
                    decoration: InputDecoration(
                      helperText: 'Password',
                    )
                ),
                MaterialButton(
                  child: Text('Login'),
                  onPressed: (){},
                )
              ],
            ),
          ),
        )
    );
  }
}