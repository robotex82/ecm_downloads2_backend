class Ecm::Downloads::Backend::DownloadsController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    Ecm::Downloads::Download
  end

  def download
    @download = Ecm::Downloads::Download.friendly.find(params[:id]).decorate
    redirect_to @download.asset.expiring_url(100)
  end

  private

  def permitted_params
    params
      .require(:ecm_downloads_download)
      .permit(:ecm_downloads_download_category_id, :asset, :name, :description, :published)
  end

  def collection_scope
    @q = collection_scope_with_search_scopes(resource_class.includes(:ecm_downloads_download_category)).ransack(params[:q])
    @q.result(distinct: true)
  end

  def load_resource
    load_scope.friendly.find(params[:id])
  end
end
