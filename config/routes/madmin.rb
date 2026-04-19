# Below are the routes for madmin
namespace :madmin do
  namespace :action_text do
    resources :encrypted_rich_texts
  end
  namespace :action_text do
    resources :rich_texts
  end
  namespace :active_storage do
    resources :variant_records
  end
  namespace :active_storage do
    resources :attachments
  end
  resources :arts
  resources :blogs
  resources :bloggables
  resources :lists
  namespace :active_storage do
    resources :blobs
  end
  resources :novines
  resources :posts
  resources :users
  root to: "dashboard#show"
end
