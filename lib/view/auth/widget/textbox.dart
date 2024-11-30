import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget cusTomTextbox({
  required TextEditingController ctl,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      onChanged: (value) {},
      controller: ctl,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
    ),
  );
}
