Itsf::Backend.configure do |config|
  # Set the base controller
  #
  # Default: config.base_controller = '::BackendController'
  #
  config.base_controller = '::BackendController'

  # Register backend engines here. They will be  added to the backend menu
  # 
  # Example: config.backend_engines = [ MyEngine::Engine ]
  # 
  # Default: config.backend_engines = []
  # 
  config.backend_engines = [
    Ecm::Downloads::Backend::Engine
  ]
end