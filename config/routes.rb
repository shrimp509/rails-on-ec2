Rails.application.routes.draw do
  get 'say/hello'
  get 'say/goodbye'
  resources :users

  post 'api/post' => 'api#create_post'
  post 'api/comment' => 'api#create_comment'
  get 'api/posts' => 'api#get_posts'
end
