Rails.application.routes.draw do
  localized do
    mount Itsf::Backend::Engine => '/backend'
    mount Ecm::Downloads::Backend::Engine => '/backend/ecm/downloads'
  end
end
