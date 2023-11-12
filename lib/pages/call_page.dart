import 'package:flutter/material.dart';
import 'package:reto_wasap_io/widgets/item_call_widget.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
        ],
      ),
    );
  }
}

