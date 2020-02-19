// import 'package:in_app_purchase/in_app_purchase.dart';
// import 'dart:async';

// class Iap{

//   StreamSubscription<List<PurchaseDetails>> _subscription;

//   void initState(){
//     final Stream purchaseUpdates = InAppPurchaseConnection.instance.purchaseUpdatedStream;
//       _subscription = purchaseUpdates.listen((purchases) {
//       _handlePurchaseUpdates(purchases);
//     });
//   }

//   void dispose(){
//      _subscription.cancel();
//   }

//   void _handlePurchaseUpdates(dynamic purchases) {
//     //Remove premium blockers
//   }

//   void connectToStoreFront() async {
//     /**
//      * Connects to the app store or play store
//      */
//     final bool available = await InAppPurchaseConnection.instance.isAvailable();
//     if (!available) {
//       // The store cannot be reached or accessed. Update the UI accordingly.
//     }
//   }

//   dynamic loadProducts() async {
//     /**
//      * Gets the code names for the available products
//      * Couldn't return type of List<ProductDetails> for some reason
//      */
//     const Set<String> _kIds = {'product1', 'product2'};
//     final ProductDetailsResponse response = await InAppPurchaseConnection.instance.queryProductDetails(_kIds);
//     if (!response.notFoundIDs.isEmpty) {
//       // Handle the error.
//     }
//     List<ProductDetails> products = response.productDetails;
//     return products;
//   }

//   void loadPreviousPurchases() async {
//     final QueryPurchaseDetailsResponse response = await InAppPurchaseConnection.instance.queryPastPurchases();
//     if (response.error != null) {
//       // Handle the error.
//     }
//     for (PurchaseDetails purchase in response.pastPurchases) {
//       _verifyPurchase(purchase);  // Verify the purchase following the best practices for each storefront.
//       _deliverPurchase(purchase); // Deliver the purchase to the user in your app.
//       if (Platform.isIOS) {
//         // Mark that you've delivered the purchase. Only the App Store requires
//         // this final confirmation.
//         InAppPurchaseConnection.instance.completePurchase(purchase);
//       }
//     }

//     void makePurchase() async {
//       final ProductDetails productDetails = ... // Saved earlier from queryPastPurchases().
//       final PurchaseParam purchaseParam = PurchaseParam(productDetails: productDetails);
//       if (_isConsumable(productDetails)) {
//         InAppPurchaseConnection.instance.buyConsumable(purchaseParam: purchaseParam);
//       } else {
//         InAppPurchaseConnection.instance.buyNonConsumable(purchaseParam: purchaseParam);
//       }
//     }

//   }


// }