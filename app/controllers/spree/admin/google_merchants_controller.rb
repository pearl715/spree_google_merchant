class Spree::Admin::GoogleMerchantsController < Spree::Admin::BaseController

  def update
    Spree::GoogleMerchant::Config["google_merchant_title"] = merchant_params[:google_merchant_title]
    Spree::GoogleMerchant::Config["google_merchant_description"] = merchant_params[:google_merchant_description]
    Spree::GoogleMerchant::Config["production_domain"] = merchant_params[:production_domain]

    respond_to do |format|
      format.html {
        redirect_to admin_google_merchants_path
      }
    end
  end

  private

  def merchant_params
    params[:preferences].permit(:google_merchant_title, :google_merchant_description, :production_domain)
  end
end