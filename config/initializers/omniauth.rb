
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  provider :twitter,       ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']#, {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
  provider :facebook,      ENV['FACEBOOK_APP_ID'],  ENV['FACEBOOK_APP_SECRET']
  end