class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    posts = Posts.all
    posts.to_json
  end

  post '/' do
    posts = Posts.create(
      title: params[:title],
      author: params[:author],
      content: params[:content],
    )
    posts.to_json
  end

  delete '/posts/posts' do
    posts = Posts.find(params[:posts])
    posts.destroy
    posts.to_json
  end

end
