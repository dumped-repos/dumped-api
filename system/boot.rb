begin
  require "pry-byebug"
rescue LoadError
end

require_relative "looking_for_maintainers/container"

LookingForMaintainers::Container.finalize!

require "looking_for_maintainers/web"
