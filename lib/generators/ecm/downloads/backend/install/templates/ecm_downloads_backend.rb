Ecm::Downloads::Backend.configure do |config|
  # Set the resources, that will be shown in the backend menu in development
  # mode. This needs to be set to get a correct menu because
  # Controller.descendants is empty in development. This is an eager load
  # issue.
  #
  # Default: config.registered_controllers = -> {[
  #            Ecm::Downloads::Backend::DownloadCategoriesController,
  #            Ecm::Downloads::Backend::DownloadsController
  #          ]}
  #
  config.registered_controllers = lambda {
    [
      Ecm::Downloads::Backend::DownloadCategoriesController,
      Ecm::Downloads::Backend::DownloadsController
    ]
  }

  # Set the services, that will be shown in the backend menu.
  #
  # Default: config.registered_services = -> {[]}
  #
  config.registered_services = -> { [] }
end
