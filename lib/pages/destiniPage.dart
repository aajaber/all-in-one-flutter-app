import 'package:flutter/material.dart';
import 'package:mi_card/widgets/destiniWidget.dart';

class DestiniPage extends StatefulWidget {
  static const routeName = '/destini-page';

  @override
  _DestiniPageState createState() => _DestiniPageState();
}

class _DestiniPageState extends State<DestiniPage> {
  @override
  Widget build(BuildContext context) {
    return DestiniWidget();
  }
}
