class TPricingCalculator {

  /// -- Kalkulasi Total Harga berdasarkan Pajak dan Pengiriman
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Kalkulasi Ongkos Kirim
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Kalkulasi Pajak
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Lookup persentase pajak untuk lokasi tertentu dari API atau Database
    // Di video ini hanya contoh sederhana (10%)
    return 0.10; 
  }

  static double getShippingCost(String location) {
    // Lookup ongkos kirim untuk lokasi tertentu
    // Contoh sederhana: flat rate $5.00
    return 5.00;
  }

  /// -- Menghitung Total Nilai Keranjang (Cart)
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}