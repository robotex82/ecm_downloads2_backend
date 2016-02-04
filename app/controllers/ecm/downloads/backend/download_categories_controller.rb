class Ecm::Downloads::Backend::DownloadCategoriesController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    Ecm::Downloads::DownloadCategory
  end

  private

  def permitted_params
    params
      .require(:ecm_downloads_download_category)
        .permit(:name, :description, :locale)
  end
end
