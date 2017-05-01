Deface::Override.new(
  :virtual_path => "spree/admin/shared/sub_menu/_configuration",
  :name => "insert_google_merchant_into_admin_config_menu",
  :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
  :text => %(<%= configurations_sidebar_menu_item(t("google_merchant"), admin_google_merchants_path) %>)
)