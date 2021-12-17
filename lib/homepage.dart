import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:uiecommerce/services/services_authentications.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Sudah Login"),
            TextButton(
              onPressed: () {
                context.read<AuthenticationService>().logOut();
              },
              child: Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}
