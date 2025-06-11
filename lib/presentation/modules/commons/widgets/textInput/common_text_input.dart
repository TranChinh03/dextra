import 'package:dextra/theme/border/app_border_radius.dart';
import 'package:dextra/theme/color/app_color.dart';
import 'package:flutter/material.dart';

class CommonTextInput extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController? controller;
  final String? value;
  final ValueChanged<String> onChanged;

  const CommonTextInput({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.value,
    required this.onChanged,
    this.controller,
  });

  @override
  State<CommonTextInput> createState() => _CommonTextInputState();
}

class _CommonTextInputState extends State<CommonTextInput> {
  late TextEditingController _controller;
  bool _isObscured = true;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.isPassword;
    _controller =
        widget.controller ?? TextEditingController(text: widget.value);

    // Listen to controller changes and call the onChanged callback
    _controller.addListener(() {
      if (_controller.text != widget.value) {
        widget.onChanged(_controller.text);
      }
    });
  }

  @override
  void didUpdateWidget(CommonTextInput oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Update the controller's text if the widget's value changes
    if (widget.value != _controller.text) {
      _controller.text = widget.value ?? "";
      _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appColor = IAppColor.watch(context);
    return TextField(
      obscureText: _isObscured,
      controller: _controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: appColor.black.withOpacity(0.3),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : null,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius.m),
          borderSide: BorderSide(color: appColor.black.withOpacity(0.3)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius.m),
          borderSide: BorderSide(color: appColor.black.withOpacity(0.3)),
        ),
      ),
    );
  }
}
