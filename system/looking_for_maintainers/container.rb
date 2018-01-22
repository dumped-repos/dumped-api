require "dry/web/container"
require "dry/system/components"

module LookingForMaintainers
  class Container < Dry::Web::Container
    configure do
      config.name = :looking_for_maintainers
      config.listeners = true
      config.default_namespace = "looking_for_maintainers"
      config.auto_register = %w[lib/looking_for_maintainers]
    end

    load_paths! "lib"
  end
end
