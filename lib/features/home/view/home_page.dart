import 'package:flutter/material.dart';
import 'package:nolatech/features/fields/view/fields_page.dart';
import 'package:nolatech/features/home/widget/home_app_bar.dart';
import 'package:nolatech/features/home/widget/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff0a3740).withOpacity(0.9),
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FieldsPage(),
          ),
        ),
      ),
      body: const HomeBody(),
    );
  }
}
