require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # The documentation of react-rails recommends to add ts and tsx to the server_renderer_extensions in your application configuration
    # https://github.com/reactjs/react-rails/blob/854e09d455db0067ee3ae98e444960e7d1b5aaac/README.md#typescript-support
    config.react.server_renderer_extensions = ["jsx", "js", "tsx", "ts"]
  end
end
