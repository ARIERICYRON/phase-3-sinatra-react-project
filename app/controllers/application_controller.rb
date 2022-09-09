class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/posts" do
    posts = Posts.all
    posts.to_json
  end

  post '/posts' do
    posts = Posts.create(
      title: params[:title],
      author: params[:author],
      content: params[:content],
    )
    posts.to_json
  end

  delete '/posts/:id' do
    posts = Posts.find(params[:id])
    posts.destroy
    posts.to_json
  end

end
