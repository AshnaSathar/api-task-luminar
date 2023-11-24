import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/providerClass.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    await Provider.of<Providerclass>(context, listen: false).getData();
  }

  Widget build(BuildContext context) {
    Providerclass obj = Providerclass();
    return Scaffold(
      body: Text(
          Provider.of<Providerclass>(context).responseData?.email.toString() ??
              "email"),
    );
  }
}
