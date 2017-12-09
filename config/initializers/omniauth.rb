Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  #puts "key: #{ENV['TWITTER_KEY']}\n secret: #{ENV['TWITTER_SECRET']}"
end