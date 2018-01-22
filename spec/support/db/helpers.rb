module Test
  module DatabaseHelpers
    module_function

    def rom
      LookingForMaintainers::Container["persistence.rom"]
    end

    def db
      LookingForMaintainers::Container["persistence.db"]
    end
  end
end
