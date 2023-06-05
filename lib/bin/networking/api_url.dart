class ApiUrl {
  // static const String _base = 'https://portal.getepay.in:8443/getepayPortal';
  static bool kTest = false;
  static final String _base = kTest
      ? 'https://pay1.getepay.in:8443/getepayPortal'
      : 'https://portal.getepay.in:8443/getepayPortal';

  // static const String _base = 'https://portal.getepay.in:8443'; // send box - production

  static String getLink = "$_base/pg/generateInvoice";
  static String getInvoiceStatus = "$_base/pg/invoiceStatus";
  static final String ru = '$_base/pg/pgPaymentResponse';
}
