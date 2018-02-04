require "dumped_api/view/controller"

module DumpedApi
  module Views
    class Welcome < DumpedApi::View::Controller
      configure do |config|
        config.template = "welcome"
      end
    end
  end
end
