module Ecm
  module Downloads
    module Backend
      class DownloadsController < Itsf::Backend::Resource::BaseController
        include ResourcesController::Sorting
        include ResourcesController::FriendlyIdConcern

        def self.resource_class
          Ecm::Downloads::Download
        end

        def download
          @download = load_resource_scope.find(params[:id]).decorate
          redirect_to @download.asset.expiring_url(100)
        end

        private

        def permitted_params
          params
            .require(:download)
            .permit(:download_category_id, :asset, :name, :description, :published)
        end
      end
    end
  end
end
