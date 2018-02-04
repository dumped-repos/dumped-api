require "dry/web/container"
require "dry/system/components"

module DumpedApi
  class Container < Dry::Web::Container
    configure do
      config.name = :dumped_api
      config.listeners = true
      config.default_namespace = "dumped_api"
      config.auto_register = %w[lib/dumped_api]
    end

    load_paths! "lib"
  end
end
