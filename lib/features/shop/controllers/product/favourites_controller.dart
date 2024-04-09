
import 'dart:convert';

import 'package:get/get.dart';
import 'package:iecommerce/common/widgets/loader/loader.dart';
import 'package:iecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:iecommerce/features/shop/models/product/product_model.dart';
import 'package:iecommerce/utils/local_storage/storage_utility.dart';

class FavouriteController extends GetxController{

  static FavouriteController get instance => Get.find();

  final favorites =<String, bool>{}.obs;

  @override
  void onInit() {
    super.onInit();

  }

  void initFavorites() {
    final json = TLocalStorage.instance().readData('favorites');
    if (json != null) {
      final storedFavorites = jsonDecode(json) as Map<String, dynamic>;
      favorites.assignAll(
          storedFavorites.map((key, value) => MapEntry(key, value as bool)));
    }
  }
    bool isFavourite (String productId) {
      return favorites [productId] ?? false;
    }

    void toggleFavoriteProduct(String productId) {
    if (!favorites.containsKey(productId)) {
      favorites [productId] = true;
      saveFavoritesToStorage();
      TLoaders.customToast(message: 'Product has been added to the Wishlist.');
    } else {
      TLocalStorage.instance().removeData(productId);
      favorites.remove(productId);
      saveFavoritesToStorage();
      favorites.refresh();
      TLoaders.customToast(
          message: 'Product has been removed from the Wishlist.');
    }
  }

  void saveFavoritesToStorage(){
    final encodedFavorites = json.encode(favorites);
    TLocalStorage.instance().saveData('favorites', encodedFavorites);
  }

  Future<List<ProductModel>> favoriteProducts() async {
    List<ProductModel>? list;
    ProductModel? obj;
    list!.add(obj!);
    return await list;
    // return await ProductRepository.instance.getFavoriteProducts(favorites.keys.toList());
  }
}