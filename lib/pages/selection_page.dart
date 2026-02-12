import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  bool _checked = false;
  bool _switched = false;
  String _radio = 'A';
  String _dropdown = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Selection')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckboxListTile(
              title: const Text('Enable feature'),
              value: _checked,
              onChanged: (v) => setState(() => _checked = v ?? false),
            ),
            SwitchListTile(
              title: const Text('Toggle option'),
              value: _switched,
              onChanged: (v) => setState(() => _switched = v),
            ),
            const SizedBox(height: 8),
            const Text('Choose one:'),
            RadioListTile<String>(value: 'A', groupValue: _radio, title: const Text('Option A'), onChanged: (v) => setState(() => _radio = v!)),
            RadioListTile<String>(value: 'B', groupValue: _radio, title: const Text('Option B'), onChanged: (v) => setState(() => _radio = v!)),
            const SizedBox(height: 12),
            DropdownButton<String>(
              value: _dropdown,
              items: const [DropdownMenuItem(value: 'One', child: Text('One')), DropdownMenuItem(value: 'Two', child: Text('Two'))],
              onChanged: (v) => setState(() => _dropdown = v!),
            ),
          ],
        ),
      ),
    );
  }
}
