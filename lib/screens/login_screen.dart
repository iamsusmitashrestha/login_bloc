import 'package:flutter/material.dart';
import 'package:login_bloc/blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          StreamBuilder(
            stream: bloc.email,
            builder: (context, snapshot) {
              return TextField(
                onChanged: bloc.changeEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'Email Address',
                  errorText: (snapshot.error as String?),
                ),
              );
            },
          ),
          StreamBuilder(
            stream: bloc.password,
            builder: (context, snapshot) {
              return TextField(
                onChanged: bloc.changePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                ),
              );
            },
          ),

          // ElevatedButton(onPressed: (){}, child: Text("Submit"),),
        ],
      ),
    );
  }
}
