Rails.application.routes.draw do
  root to: redirect("about_us")

  get "about_us" => "pages#about_us"
  get "photos"   => "pages#photos"
  get "contact"  => "pages#contact"
end
