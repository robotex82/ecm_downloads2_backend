class Ecm::Downloads::Backend::DownloadsController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    Ecm::Downloads::Download
  end

  private

  def collection_scope
    resource_class.includes(:ecm_downloads_download_category)
  end

  def permitted_params
    params
      .require(:ecm_downloads_download)
        .permit(:ecm_downloads_download_category_id, :asset, :name, :description, :published)
  end
end
