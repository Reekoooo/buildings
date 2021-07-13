import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
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
              TextFormField(
                  decoration: InputDecoration(
                    helperText: 'Password Confirm',
                  )
              ),
              MaterialButton(
                child: Text('REGISTER'),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}