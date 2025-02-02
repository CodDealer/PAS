import 'package:get/get.dart';
import 'package:pas1_mobilee_11pplg2_24/API/SportDBAPIServices.dart';

import 'package:pas1_mobilee_11pplg2_24/DataBase/FavouriteDatabase.dart';
import 'package:pas1_mobilee_11pplg2_24/Model/League%20Model.dart';

class SportsController extends GetxController {
  var ld = true.obs;
  var list = <League>[].obs;
  final DatabaseHelper dbHelper = DatabaseHelper();

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
    dbHelper.loadFavorites();
  }

  void fetchPosts() async {
    try {
      ld(true);
      var posts = await Sportsdbapi().fetchPosts();
      list.assignAll(posts);
    } finally {
      ld(false);
    }
  }

  /// Check if a league is a favorite by its title
  bool isFavorite(String title) {
    return dbHelper.favorites.any((fav) => fav['title'] == title);
  }

  Future<void> toggleFavorite(Map<String, dynamic> item) async {
    if (isFavorite(item['title'])) {
      final fav = dbHelper.favorites.firstWhere((fav) => fav['title'] == item['title']);
      await dbHelper.deleteFav(fav['id']);
      Get.snackbar('Removed from Favorites', item['title']);
    } else {
      // Add item to database
      await dbHelper.addFav({
        'image': item['image'],
        'title': item['title'],
        'description': item['description'],
      });
      await dbHelper.loadFavorites(); // Refresh the favorites list
      Get.snackbar('Added to Favorites', item['title']);
    }
  }


}
