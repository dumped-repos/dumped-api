module Test
  module WebHelpers
    module_function

    def app
      DumpedApi::Web.app
    end
  end
end
