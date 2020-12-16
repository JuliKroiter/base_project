# RailsSettings Model
class Setting < RailsSettings::Base
  cache_prefix { "v1" }
  SETTING_FIELDS = %w{ main_title main_get_starred about_company_title about_company_description about_company_content
    services_title services_description sales_title price_title price_description portfolio_title
    about_us_title about_us_description about_us_content
    counter_1_title counter_1_value counter_2_title counter_2_value counter_3_title counter_3_value counter_4_title counter_4_value
    clients_title team_title team_description faq_title faq_description
    project_name footer_description subscribers_title subscribers_description address email phone request_title
    request_description vk_link instagram_link facebook_link youtube_link
}

  SETTING_FIELDS.each do |field_name|
    field field_name
  end

  # Define your fields
  # field :host, type: :string, default: "http://localhost:3000"
  # field :default_locale, default: "en", type: :string
  # field :confirmable_enable, default: "0", type: :boolean
  # field :admin_emails, default: "admin@rubyonrails.org", type: :array
  # field :omniauth_google_client_id, default: (ENV["OMNIAUTH_GOOGLE_CLIENT_ID"] || ""), type: :string, readonly: true
  # field :omniauth_google_client_secret, default: (ENV["OMNIAUTH_GOOGLE_CLIENT_SECRET"] || ""), type: :string, readonly: true
end
