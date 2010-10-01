# Be sure to restart your server when you modify this file

# Passenger and Nginx doesn't work, they cannot find gem
#ENV['PATH'] = "#{ENV['PATH']}:/usr/lib/ruby/gems/1.8"
#ENV['LD_LIBRARY_PATH'] = "#{ENV['LD_LIBRARY_PATH']}:/usr/lib/ruby/gems/1.8"
#ENV['GEM_PATH'] = "/usr/lib/ruby/gems/1.8:#{ENV['GEM_PATH']}"
#Gem.clear_paths

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Specify gems that this application depends on and have them installed with rake gems:install
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"

  config.gem "linguistics"
  config.gem "will_paginate"
  config.gem "RedCloth"
  config.gem "mechanize"
  config.gem "rmagick", :lib => "RMagick"
  config.gem "geokit"
  config.gem 'rubyzip', :lib => 'zip/zip'
  config.gem 'haml'
  config.gem 'hpricot'
  config.gem 'pg'
  config.gem 'mongo_mapper'
  config.gem 'bson_ext', :lib=>false
  config.gem 'firewatir'
  config.gem 'chronic'
  config.gem 'javan-whenever', :lib => false, :source => 'http://gems.github.com'
  config.gem "mail", :version=>"2.2.1"
  config.gem "backup"

  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Skip frameworks you're not going to use. To use Rails without a database,
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  config.time_zone = 'Bangkok'
  config.active_record.default_timezone = "Bangkok"
  THAI_MONTHS = %w(มกราคม กุมภาพันธ์ มีนาคม เมษายน พฤษภาคม มิถุนายน กรกฎาคม สิงหาคม กันยายน ตุลาคม พฤศจิกายน ธันวาคม)
  APP_VERSION = '0.1'
  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
  config.action_controller.session_store = :active_record_store
  IMAGE_LOCATION = "doc/upload"
  CDN = false
  GMAP = false
  LAAS_USER = "abtbtnai714"
  LAAS_PASSWORD = "318883"
  LAAS_RETRY = 3
end
