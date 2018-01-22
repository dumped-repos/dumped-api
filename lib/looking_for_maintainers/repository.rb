# auto_register: false

require "rom-repository"
require "looking_for_maintainers/container"
require "looking_for_maintainers/import"

module LookingForMaintainers
  class Repository < ROM::Repository::Root
    include Import.args["persistence.rom"]
  end
end
