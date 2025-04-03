import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.blue.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              onChanged: (text) {
                setState(() {}); // Cập nhật UI khi text thay đổi
              },
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                hintStyle: const TextStyle(color: Colors.blue),
              ),
              style: const TextStyle(color: Colors.blue),
            ),
          ),
          if (_controller.text.isNotEmpty) // Chỉ hiển thị khi có text
            IconButton(
              onPressed: () {
                _controller.clear();
                setState(() {});
              },
              icon: const Icon(Icons.close, color: Colors.red),
            ),
        ],
      ),
    );
  }
}
