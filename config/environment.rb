# Bootstrap the Bowline environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Bowline::Initializer.run do |config|
  config.name       = "Twitter"
  config.id         = "com.twitter"
  config.version    = "0.1.0"
  config.publisher  = "Example"
  config.url        = "http://example.com"
  config.icon       = "public/icon.png"
end