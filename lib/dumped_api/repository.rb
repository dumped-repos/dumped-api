# auto_register: false

require "rom-repository"
require "dumped_api/container"
require "dumped_api/import"

module DumpedApi
  class Repository < ROM::Repository::Root
    include Import.args["persistence.rom"]
  end
end
