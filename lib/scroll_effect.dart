import 'package:flutter/material.dart';
import 'package:flutter_application_1/Image_widget.dart';

class ScrollEffect extends StatelessWidget {
  const ScrollEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Sliver appbar'),
            backgroundColor: Colors.blueGrey,
            expandedHeight: 200,
            leading: const Icon(Icons.arrow_back),
            actions: const [
              Icon(Icons.settings),
              SizedBox(
                width: 12,
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/fruit.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 20,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ImageWidget(
                    index: index,
                  );
                }),
          )
        ],
      ),
    );
  }
}
