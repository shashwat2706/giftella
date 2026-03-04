class TPricingCalculator {

  /// Calculate Total Price (Product + Tax + Shipping)
  static double calculateTotalPrice(double productPrice, String location) {

    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;

    return totalPrice;
  }

  /// Calculate Shipping Cost
  static String calculateShippingCost(double productPrice, String location) {

    double shippingCost = getShippingCost(location);

    return shippingCost.toStringAsFixed(2);
  }

  /// Calculate Tax
  static String calculateTax(double productPrice, String location) {

    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    return taxAmount.toStringAsFixed(2);
  }


  /// Get Tax Rate (Mock Example)
  static double getTaxRateForLocation(String location) {

    // You can replace this with API or database lookup
    return 0.10; // Example 10% tax
  }

  /// Get Shipping Cost (Mock Example)
  static double getShippingCost(String location) {

    // You can replace this with API-based calculation
    return 5.00; // Example $5 shipping
  }

/// ------------------------------------------------
/// (Optional) Calculate Cart Total
/// ------------------------------------------------
// static double calculateCartTotal(CartModel cart) {
//   return cart.items
//       .map((e) => e.price)
//       .fold(0, (previousPrice, currentPrice) =>
//           previousPrice + (currentPrice ?? 0));
// }
}