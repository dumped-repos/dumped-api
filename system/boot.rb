begin
  require "pry-byebug"
rescue LoadError
end

require_relative "dumped_api/container"

DumpedApi::Container.finalize!

require "dumped_api/web"
