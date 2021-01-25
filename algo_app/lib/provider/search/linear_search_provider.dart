import 'package:algo_app/models/search_models.dart';
import 'package:algo_app/provider/search/search_provider.dart';

class LinerSearchProvider extends SearchProvider {
  @override
  void search({int value = 34}) {
    super.search(value: value);
    _startSearch(numbers, value);
  }

  Future _startSearch(List<SearchModel> list, int target) async {
    for (var index = 0; index < list.length; index++) {
      potentialNode(index);
      await pause();
      if (numbers[index].value == target) {
        foundNode(index);
        return;
      } else {
        discardNode(index);
      }
    }
    nodeNotFound();
  }
}
