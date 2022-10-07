Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: redirect('/blog_posts')

  get 'blog_posts', to: 'blog_posts#index', as: 'blog_posts'
  post 'blog_posts', to: 'blog_posts#create'
  get 'blog_posts/new', to: 'blog_posts#new', as: 'new_blog_post'
  get 'blog_posts/:id/edit', to: 'blog_posts#edit', as: 'edit_blog_post'
  get 'blog_posts/:id', to: 'blog_posts#show', as: 'blog_post'
  patch 'blog_posts/:id', to: 'blog_posts#update'
  delete 'blog_posts/:id', to: 'blog_posts#destroy'
end
