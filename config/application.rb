require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module DailyHours
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    # add libs directory to path on load
    config.autoload_paths << Rails.root.join("lib")
  end
end
