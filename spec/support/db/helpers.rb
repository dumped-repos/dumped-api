module Test
  module DatabaseHelpers
    module_function

    def rom
      DumpedApi::Container["persistence.rom"]
    end

    def db
      DumpedApi::Container["persistence.db"]
    end
  end
end
