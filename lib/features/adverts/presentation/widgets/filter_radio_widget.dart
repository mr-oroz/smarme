import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/widgets/gl_button.dart';
import 'package:w_sharme_beauty/features/adverts/data/data/data.dart';

typedef OnSelectCallback = void Function(String text);

class RadioFilterWidget extends StatefulWidget {
  const RadioFilterWidget({
    super.key,
    required this.list,
    required this.onSelect,
    required this.selectedValue,
  });

  final List<String> list;
  final OnSelectCallback onSelect;
  final String selectedValue;

  @override
  State<RadioFilterWidget> createState() => _RadioFilterWidgetState();
}

class _RadioFilterWidgetState extends State<RadioFilterWidget> {
  late String localSelectedValue;

  @override
  void initState() {
    super.initState();
    localSelectedValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(widget.list.length, (index) {
            return DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              child: ListTile(
                title: Text(
                  widget.list == ratingList
                      ? 'Не ниже ★ ${widget.list[index]}'
                      : widget.list[index],
                ),
                leading: Radio<String>(
                  value: widget.list[index],
                  groupValue: localSelectedValue,
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        localSelectedValue = value;
                      });
                      widget.onSelect(value);
                    }
                  },
                ),
              ),
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: GlButton(
            text: 'Готово',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}
