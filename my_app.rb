# my_app.rb
require 'sinatra'

class MyApp < Sinatra::Base
  
  get "/" do
    erb :index 
  end

  get "/blog/:post_name" do
    params[:post_name]
    erb "posts/#{params[:post_name]}".to_sym
  end

  

  # get "/name/:rred" do 
  #   puts params.inspect
  # end
end
