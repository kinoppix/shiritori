# config/initializers/shower.rb

module Shower
  config = YAML.load(ERB.new(File.read("#{RAILS_ROOT}/config/shower.yml")).result)[Rails.env]
  CONFIG = config[ENV['USER']] || config
  URL = CONFIG['url']
  API_IN = CONFIG['api_in']
end