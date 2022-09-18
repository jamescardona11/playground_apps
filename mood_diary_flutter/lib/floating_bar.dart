import 'package:flutter/material.dart';

class FloatingBottomBar extends StatefulWidget {
  const FloatingBottomBar({
    Key? key,
    required this.items,
    this.initialIndex = 0,
    this.activeColor = Colors.deepPurple,
    this.inactiveColor = Colors.grey,
  }) : super(key: key);

  final List<IconData> items;
  final int initialIndex;
  final Color activeColor;
  final Color inactiveColor;

  @override
  State<FloatingBottomBar> createState() => _FloatingBottomBarState();
}

class _FloatingBottomBarState extends State<FloatingBottomBar> {
  late int innerIndex;

  @override
  void initState() {
    innerIndex = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: EdgeInsets.only(
        top: 10,
        bottom: 30,
        left: 60,
        right: 60,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 30,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: widget.items.map((item) {
          final itemIndex = widget.items.indexOf(item);
          final active = itemIndex == innerIndex;

          return InkWell(
            onTap: () {
              innerIndex = itemIndex;
              setState(() {});
            },
            child: SizedBox(
              width: 55,
              height: 55,
              child: Icon(
                item,
                color: active ? widget.activeColor : widget.inactiveColor,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
