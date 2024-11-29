import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'corner_radius_provider.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CornerRadiusProvider>(context);

    return Column(
      children: [
        _buildSlider(
          label: "TL",
          value: provider.topLeft,
          onChanged: (value) => provider.updateTopLeft(value),
        ),
        _buildSlider(
          label: "TR",
          value: provider.topRight,
          onChanged: (value) => provider.updateTopRight(value),
        ),
        _buildSlider(
          label: "BL",
          value: provider.bottomLeft,
          onChanged: (value) => provider.updateBottomLeft(value),
        ),
        _buildSlider(
          label: "BR",
          value: provider.bottomRight,
          onChanged: (value) => provider.updateBottomRight(value),
        ),
      ],
    );
  }

  Widget _buildSlider({
    required String label,
    required double value,
    required ValueChanged<double> onChanged,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$label: ${value.toStringAsFixed(2)}"),
        Expanded(
          child: Slider(
            value: value,
            min: 0,
            max: 100,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
