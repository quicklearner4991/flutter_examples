import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  Login createState() => Login();
}

class Login extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          children: <Widget>[
            const SizedBox(
              height: 200.0,
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  "images/my_app_logo.png",
                  height: 128.0,
                )
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            PrimaryColorOverride(
              color: Colors.white,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email/Username'),
              ),
            ),
            const SizedBox(height: 15.0,),
            PrimaryColorOverride(
              color: Colors.white,
              child: TextField(
                controller: _passwordController,
                obscureText: true,//to hide password while entering
                decoration: const InputDecoration(labelText: 'Password'),
              ),
            ),
            const SizedBox(height: 40.0,),
            RaisedButton(
              child: const Text('LOGIN',style:TextStyle(fontSize: 20.0) ,),
              elevation: 8.0,
              color: Colors.indigoAccent,
              padding: EdgeInsets.all(15.0),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: (){
                // do where what you want to perform
                print('login button clicked');

              },


            )

          ],
        ),
      ),
    );
  }
}

class PrimaryColorOverride extends StatelessWidget {
  final Color color;
  final Widget child;

  const PrimaryColorOverride({Key key, this.color, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(primaryColor: color),
    );
  }
}
