import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mood_diary/app/widgets/widgets.dart';
import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// ```
/// InputTextWidget(
///   hint: 'Enter your email',
///   leadingIconConfig: LeadingIconConfig(
///     leadingIcon: Icons.mail,
///   ),
///   onChanged: (value) {},
/// )
/// ```

typedef InputTextWidgetValidator<T> = String? Function(T? value);

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({
    super.key,
    this.width = 150,
    this.height = 65,
    this.maxLines = 1,
    this.cursorColor,
    required this.hint,
    required this.icon,
    this.label,
    this.inputFormatter = const [],
    this.isEditable = true,
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.controller,
    this.onChanged,
    this.validator,
  });

  final double width;
  final double height;
  final int maxLines;

  final Color? cursorColor;
  final IconData icon;

  final String hint;
  final String? label;

  final List<TextInputFormatter> inputFormatter;
  final bool isEditable;

  final TextInputType keyboardType;
  final FocusNode? focusNode;

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final InputTextWidgetValidator? validator;

  @override
  Widget build(BuildContext context) {
    return RoundContainer(
      width: width,
      height: height,
      borderColor: Colors.grey,
      child: Row(
        children: [
          ActionIcon(
            background: context.appColors.grey,
            iconColor: context.appColors.black,
            icon: icon,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              onChanged: onChanged,
              maxLines: maxLines,
              cursorColor: context.appColors.primary,
              keyboardType: keyboardType,
              focusNode: focusNode,
              inputFormatters: inputFormatter,
              validator: validator,
              decoration: InputDecoration(
                enabled: isEditable,
                hintText: hint,
                hintStyle: _textStyle(const Color(0xFFA6A8B4)),
                labelText: label,
                labelStyle: _textStyle(const Color(0xFFA6A8B4)),
                border: InputBorder.none,
              ),
              style: _textStyle(const Color(0xFF333333)),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _textStyle(Color color) => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color,
      );
}
