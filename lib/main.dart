import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            HeaderLogin(),
            Content(),
            FooterSignup(),
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FormLogin(),
            RememberButtonLogin(),
          ],
        ),
      ),
    );
  }
}

class RememberButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      child: Row(
        children: [
          Expanded(
            child: CheckboxListTile(
              title: Text("Remember me"),
              value: true,
              onChanged: (newValue) {},
              controlAffinity: ListTileControlAffinity.leading,
              selectedTileColor: Colors.purple,
              activeColor: Colors.purple,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple,
                  offset: Offset(0, 0),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Text(
              'LOGIN',
              style: textTheme.bodyText1.copyWith(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 0),
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              labelText: 'Username',
              prefixIcon: Icon(
                Icons.person,
                color: Colors.purple,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              labelText: 'Password',
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: size.height * 0.2,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Login',
              style: textTheme.headline3.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: -40,
                  top: size.height * 0.035,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple,
                          offset: Offset(0, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 55,
                  top: size.height * 0.065,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple,
                          offset: Offset(0, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FooterSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: size.height * 0.2,
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: -40,
                  top: size.height * 0.035,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple,
                          offset: Offset(0, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 55,
                  top: size.height * 0.065,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple,
                          offset: Offset(0, 0),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Sign Up',
              style: textTheme.headline3.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
