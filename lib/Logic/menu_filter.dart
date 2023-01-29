import 'package:restmenu/Debug/de_logger.dart';
import 'package:restmenu/Model/model_menu.dart';

class Filter {
  static List<MenuItem> filteredItems(
      List<MenuItem> unfilteredList, String filter) {
    List<MenuItem> filteredItems = [];
    for (var item in unfilteredList) {
      if (item.category == filter) {
        Logger.logOut(item.category);
        filteredItems.add(item);
      }
    }
    return filteredItems;
  }
}
