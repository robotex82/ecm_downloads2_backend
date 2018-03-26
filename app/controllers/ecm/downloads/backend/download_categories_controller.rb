module Ecm
  module Downloads
    module Backend
      class DownloadCategoriesController < Itsf::Backend::Resource::BaseController
        include ResourcesController::Sorting
        include ResourcesController::FriendlyIdConcern

        def self.resource_class
          Ecm::Downloads::DownloadCategory
        end

        private

        def permitted_params
          params
            .require(:download_category)
            .permit(:name, :description, :locale)
        end
      end
    end
  end
end
