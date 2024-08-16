import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_timezone_dropdown/gen/assets.gen.dart';

import '../model/timezone.dart';

class TimezoneDropdown extends StatefulWidget {
  const TimezoneDropdown({
    super.key,
    this.selectedValue,
    this.onChanged,
    this.hintText,
    this.labelText,
    this.itemBuilder,
    this.alignment,
    this.decoration,
    this.dropdownColor,
    this.focusColor,
    this.focusNode,
    required this.isExpanded,
    required this.isDense,
    this.menuMaxHeight,
    this.onSaved,
    this.padding,
    required this.autofocus,
    this.autovalidateMode,
    this.validator,
    this.borderRadius,
    this.disabledHint,
    this.elevation,
    required this.enableFeedback,
    this.icon,
    this.iconDisabledColor,
    this.iconColor,
    this.iconEnabledColor,
    this.iconSize,
    this.itemHeight,
    this.onTap,
    this.selectedItemBuilder,
    this.style,
  });

  final TimeZone? selectedValue;
  final Function(TimeZone?)? onChanged;
  final String? hintText;
  final String? labelText;
  final DropdownMenuItem<TimeZone> Function(TimeZone)? itemBuilder;
  final AlignmentGeometry? alignment;
  final InputDecoration? decoration;
  final Color? dropdownColor;
  final Color? focusColor;
  final FocusNode? focusNode;
  final bool isExpanded;
  final bool isDense;
  final double? menuMaxHeight;
  final Function(TimeZone?)? onSaved;
  final EdgeInsetsGeometry? padding;
  final bool autofocus;
  final AutovalidateMode? autovalidateMode;
  final String? Function(TimeZone?)? validator;
  final BorderRadius? borderRadius;
  final Widget? disabledHint;
  final int? elevation;
  final bool enableFeedback;
  final Widget? icon;
  final Color? iconDisabledColor;
  final Color? iconColor;
  final Color? iconEnabledColor;
  final double? iconSize;
  final double? itemHeight;
  final void Function()? onTap;
  final List<Widget> Function(BuildContext)? selectedItemBuilder;
  final TextStyle? style;

  @override
  State<TimezoneDropdown> createState() => _TimezoneDropdownState();
}

class _TimezoneDropdownState extends State<TimezoneDropdown> {
  List<TimeZone> timezones = [];

  @override
  void initState() {
    super.initState();
    loadTimezones();
  }

  Future<void> loadTimezones() async {
    final json = await rootBundle.loadString(Assets.json.timezone);
    final List<dynamic> data = jsonDecode(json);
    timezones = data.map((e) => TimeZone.fromJson(e)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<TimeZone>(
      value: widget.selectedValue,
      onChanged: widget.onChanged,
      hint: Text(widget.hintText ?? 'Select a timezone'),
      items: timezones
          .map(
            (e) =>
                widget.itemBuilder?.call(e) ??
                DropdownMenuItem(
                  value: e,
                  child: Text(e.text),
                ),
          )
          .toList(),
      alignment: widget.alignment ?? AlignmentDirectional.centerStart,
      decoration: widget.decoration,
      dropdownColor: widget.dropdownColor,
      focusColor: widget.focusColor,
      focusNode: widget.focusNode,
      isExpanded: widget.isExpanded,
      isDense: widget.isDense,
      menuMaxHeight: widget.menuMaxHeight,
      onSaved: widget.onSaved,
      padding: widget.padding,
      autofocus: widget.autofocus,
      autovalidateMode: widget.autovalidateMode,
      validator: widget.validator,
      borderRadius: widget.borderRadius,
      disabledHint: widget.disabledHint,
      elevation: widget.elevation ?? 8,
      enableFeedback: widget.enableFeedback,
      icon: widget.icon,
      iconDisabledColor: widget.iconDisabledColor,
      iconEnabledColor: widget.iconEnabledColor,
      iconSize: widget.iconSize ?? 24.0,
      itemHeight: widget.itemHeight,
      onTap: widget.onTap,
      selectedItemBuilder: widget.selectedItemBuilder,
      style: widget.style,
    );
  }
}
