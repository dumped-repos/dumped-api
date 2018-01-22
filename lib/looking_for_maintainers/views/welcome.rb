require "looking_for_maintainers/view/controller"

module LookingForMaintainers
  module Views
    class Welcome < LookingForMaintainers::View::Controller
      configure do |config|
        config.template = "welcome"
      end
    end
  end
end
