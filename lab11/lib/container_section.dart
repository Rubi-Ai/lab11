import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'corner_radius_provider.dart';
import 'slider_section.dart';

class ContainerSection extends StatelessWidget {
  const ContainerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CornerRadiusProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(provider.topLeft),
              topRight: Radius.circular(provider.topRight),
              bottomLeft: Radius.circular(provider.bottomLeft),
              bottomRight: Radius.circular(provider.bottomRight),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const SliderSection(),
      ],
    );
  }
}
