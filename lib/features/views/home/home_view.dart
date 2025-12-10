import 'package:appadaptiveui/features/widgets/shared_widgets/custom_darwer.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.child});
  final Widget child;
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDarwer(),
      backgroundColor: Color(0xffDBDBDB),
      appBar: MediaQuery.of(context).size.width - 32 <= 1024
          ? AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                icon: Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      body: widget.child,
    );
  }
}
