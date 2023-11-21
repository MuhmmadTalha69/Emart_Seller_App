import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emart_seller/const/firebase_constants.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  var orders = [];
  var confirmed = false.obs;
  var ondelivery = false.obs;
  var delivered = false.obs;
  getOrders(data) {
    orders.clear();
    for (var item in data['orders']) {
      if (item['vendor_id'] == currentUser!.uid) {
        orders.add(item);
      }
    }
  }

  changeStatus({title, status, docId}) async {
    var store = firestore.collection(ordersCollections).doc(docId);
    await store.set({
      title: status,
    }, SetOptions(merge: true));
  }
}
