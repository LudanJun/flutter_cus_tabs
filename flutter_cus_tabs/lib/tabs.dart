import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int selectIndex = 0;
  List<String> tabs = ["Today", "This Week", "This Month", "This Year"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24),
      child: Row(
        children: List.generate(
          tabs.length,
          (index) {
            return MyTab(
              text: tabs[index],
              isSelected: selectIndex == index,
              onTap: () {
                setState(() {
                  selectIndex = index; // 选中的索引等于当前记录的索引
                  print(selectIndex);
                });
              },
            );
          },
        ),
      ),
    );
  }
}

class MyTab extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function onTap;
  const MyTab({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: isSelected ? 16 : 14,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              ),
            ),
            Container(
              width: 24,
              height: 6,
              decoration: BoxDecoration(
                color: isSelected ? Colors.red : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: Colors.red,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ]
                    : [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
