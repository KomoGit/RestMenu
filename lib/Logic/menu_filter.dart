import 'package:restmenu/Model/model_menu.dart';

/*This may cause a slowdown of processes, 
because even if the category doesn't have any items attached to it, 
filter will check them one by one */

class Filter {
  static List<MenuItem> filteredItems(
      List<MenuItem> unfilteredList, String filter) {
    List<MenuItem> filteredItems = [];
    for (var item in unfilteredList) {
      if (item.category == filter) {
        filteredItems.add(item);
      }
    }
    return filteredItems;
  }
}
