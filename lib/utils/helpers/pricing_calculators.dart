class MPricingCalculator {
  // Calculate price after applying a discount
  static double applyDiscount(double originalPrice, double discountPercent) {
    if (discountPercent < 0 || discountPercent > 100) {
      throw ArgumentError('Discount percent must be between 0 and 100.');
    }
    return originalPrice - (originalPrice * (discountPercent / 100));
  }

  // Calculate price with tax
  static double applyTax(double price, double taxPercent) {
    if (taxPercent < 0) {
      throw ArgumentError('Tax percent must be non-negative.');
    }
    return price + (price * (taxPercent / 100));
  }

  // Calculate total price including discount and tax
  static double calculateTotalPrice(double originalPrice, double discountPercent, double taxPercent) {
    double priceAfterDiscount = applyDiscount(originalPrice, discountPercent);
    return applyTax(priceAfterDiscount, taxPercent);
  }

  // Calculate the final price after applying discount, tax, and rounding
  static double calculateFinalPrice(double originalPrice, double discountPercent, double taxPercent) {
    double totalPrice = calculateTotalPrice(originalPrice, discountPercent, taxPercent);
    return double.parse(totalPrice.toStringAsFixed(2)); // Round to 2 decimal places
  }
}
