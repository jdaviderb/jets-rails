module JetsRails
  class Turbine < ::Jets::Turbine
    before(:rack_install, "jets_rails.reconfigure_rails") do |build|
      ReconfigureRails.new(build.app_root).run
    end
  end
end
