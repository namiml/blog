NamiPurchaseManager.register { (purchases, state, error) in
 if state == .purchased {
   if let purchase = purchases.first {
     NamiPurchaseManager.consumePurchasedSKU(skuID: purchase.skuID)
   }
   // Make sure Nami paywall is closed before we put up thank you message.
   NamiPaywallManager.dismissNamiPaywallIfOpen(animated: true) {
      let alertController = UIAlertController(title: "Thank You", message: "Thank you so much for your donation! We will work hard to continue to brng you great updates.", preferredStyle: .alert)
      let okAction = UIAlertAction(title: "OK", style: .default) { alertAction in
      self.dismiss(animated: true, completion: 
      alertController.addAction(okAction)
      self.present(alertController, animated: false)  
    }
  }
}
