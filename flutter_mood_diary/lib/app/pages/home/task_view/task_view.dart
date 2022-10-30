import 'package:flutter/material.dart';
import 'package:flutter_mood_diary/app/widgets/widgets.dart';

import 'package:flutter_mood_diary/config/context_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TaskPage extends StatelessWidget {
  /// default constructor
  const TaskPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          ColorCardWidget(
            height: 160,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomCheckbox(
                        onChange: ((value) {}),
                      ),
                      Text('25 Jun'),
                      Spacer(),
                      FaIcon(FontAwesomeIcons.ellipsis),
                    ],
                  ),
                  Spacer(),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: context.appSizes.borderRadius10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 3),
                      child: Text('Designer team'),
                    ),
                  ),
                  Row(
                    children: [
                      CircleContinerForIcons(
                        icon: FontAwesomeIcons.fire,
                      ),
                      Text('Create user flow for client'),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomCheckbox extends StatefulWidget {
  final ValueChanged<bool> onChange;
  final bool? isChecked;
  final double? size;
  final double? iconSize;
  final Color? selectedColor;
  final Color? selectedIconColor;
  final Color? borderColor;

  CustomCheckbox({
    required this.onChange,
    this.isChecked,
    this.size,
    this.iconSize,
    this.selectedColor,
    this.selectedIconColor,
    this.borderColor,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
          widget.onChange(_isSelected);
        });
      },
      child: AnimatedContainer(
        width: 25,
        height: 25,
        margin: const EdgeInsets.all(4),
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
          color: _isSelected
              ? widget.selectedColor ?? context.appColors.blueBlack
              : Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
            color: widget.borderColor ?? Colors.black,
            width: 1.5,
          ),
        ),
        child: _isSelected
            ? Padding(
                padding: const EdgeInsets.all(0),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.check,
                    color: widget.selectedIconColor ?? Colors.white,
                    size: widget.iconSize ?? 12,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}

//  child: Stack(
//               children: [
//                 Blob.fromID(
//                   styles: BlobStyles(
//                     fillType: BlobFillType.stroke,
//                   ),
//                   id: ['4-5-6133'],
//                   size: 200,
//                 ),
//                 Blob.fromID(
//                   styles: BlobStyles(
//                     fillType: BlobFillType.stroke,
//                   ),
//                   id: ['11-7-14'],
//                   size: 200,
//                 ),
//                 Blob.fromID(
//                   styles: BlobStyles(
//                     fillType: BlobFillType.stroke,
//                   ),
//                   id: ['11-6-147'],
//                   size: 160,
//                 ),
//               ],
//             ),
