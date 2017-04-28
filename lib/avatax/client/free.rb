module AvaTax
  class Client
    module Free 


      # FREE API - Request a free trial of AvaTax
      # 
      # Call this API to obtain a free AvaTax sandbox account.
      # 
      # This API is free to use. No authentication credentials are required to call this API.
      # The account will grant a full trial version of AvaTax (e.g. AvaTaxPro) for a limited period of time.
      # After this introductory period, you may continue to use the free TaxRates API.
      # 
      # Limitations on free trial accounts:
      #  
      # * Only one free trial per company.
      # * The free trial account does not expire.
      # * Includes a limited time free trial of AvaTaxPro; after that date, the free TaxRates API will continue to work.
      # * Each free trial account must have its own valid email address.
      # 
      # @param FreeTrialRequestModel $model Required information to provision a free trial account.
      # @return NewAccountModel
      def requestFreeTrial($model)
        path = '/api/v2/accounts/freetrials/request';
        post (path)
      end


      # FREE API - Sales tax rates for a specified address
      # 
      # # Free-To-Use
      # 
      # The TaxRates API is a free-to-use, no cost option for estimating sales tax rates.
      # Any customer can request a free AvaTax account and make use of the TaxRates API.
      # However, this API is currently limited for US only
      # 
      # Note that the TaxRates API assumes the sale of general tangible personal property when estimating the sales tax
      # rate for a specified address. Avalara provides the `CreateTransaction` API, which provides extensive tax calculation 
      # support for scenarios including, but not limited to:
      # 
      # * Nexus declarations
      # * Taxability based on product/service type
      # * Sourcing rules affecting origin/destination states
      # * Customers who are exempt from certain taxes
      # * States that have dollar value thresholds for tax amounts
      # * Refunds for products purchased on a different date
      # * Detailed jurisdiction names and state assigned codes
      # * And more!
      # 
      # Please see [Estimating Tax with REST v2](http://developer.avalara.com/blog/2016/11/04/estimating-tax-with-rest-v2/)
      # for information on how to upgrade to the full AvaTax CreateTransaction API.
      # 
      # @param string $line1 The street address of the location.
      # @param string $line2 The street address of the location.
      # @param string $line3 The street address of the location.
      # @param string $city The city name of the location.
      # @param string $region The state or region of the location
      # @param string $postalCode The postal code of the location.
      # @param string $country The two letter ISO-3166 country code.
      # @return TaxRateModel
      def taxRatesByAddress($line1, $line2, $line3, $city, $region, $postalCode, $country)
        path = '/api/v2/taxrates/byaddress';
        get (path)
      end


      # FREE API - Sales tax rates for a specified country and postal code
      # 
      # # Free-To-Use
      # 
      # The TaxRates API is a free-to-use, no cost option for estimating sales tax rates.
      # Any customer can request a free AvaTax account and make use of the TaxRates API.
      # However, this API is currently limited for US only
      # 
      # Note that the TaxRates API assumes the sale of general tangible personal property when estimating the sales tax
      # rate for a specified address. Avalara provides the `CreateTransaction` API, which provides extensive tax calculation 
      # support for scenarios including, but not limited to:
      # 
      # * Nexus declarations
      # * Taxability based on product/service type
      # * Sourcing rules affecting origin/destination states
      # * Customers who are exempt from certain taxes
      # * States that have dollar value thresholds for tax amounts
      # * Refunds for products purchased on a different date
      # * Detailed jurisdiction names and state assigned codes
      # * And more!
      # 
      # Please see [Estimating Tax with REST v2](http://developer.avalara.com/blog/2016/11/04/estimating-tax-with-rest-v2/)
      # for information on how to upgrade to the full AvaTax CreateTransaction API.
      # 
      # @param string $country The two letter ISO-3166 country code.
      # @param string $postalCode The postal code of the location.
      # @return TaxRateModel
      def taxRatesByPostalCode($country, $postalCode)
        path = '/api/v2/taxrates/bypostalcode';
        get (path)
      end

    end
  end
end