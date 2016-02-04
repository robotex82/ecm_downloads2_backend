module Ecm
  module Downloads
    module Backend
      class Engine < ::Rails::Engine
        isolate_namespace Ecm::Downloads::Backend

        initializer "ecm_downloads_backend.asset_pipeline" do |app|
          app.config.assets.precompile << 'ecm_downloads_backend.js'
          app.config.assets.precompile << 'ecm_downloads_backend.css'
        end
      end
    end
  end
end



