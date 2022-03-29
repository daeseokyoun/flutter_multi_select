import 'package:flutter/foundation.dart';

///  A Controller for multi select. Allows to get all selected items, de select all, select all.
class MultiSelectController<T> {
  /// Default false. if true -> deselect all selected items with Perpetual selected items
  final bool deSelectPerpetualSelectedItems;

  /// Deselect all selected items
  late VoidCallback deselectAll;

  /// Select all items
  late List<T> Function() selectAll;

  /// get all selected items
  late List<T> Function() getSelectedItems;

  /// add new item on the fly
  late void Function(T value, String label) addItem;

  /// remove item
  late void Function(Set<T> values) removeItems;

  /// deselect single item
  late void Function(T value) deSelectItem;

  MultiSelectController({this.deSelectPerpetualSelectedItems = false});
}
