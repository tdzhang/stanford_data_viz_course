# app.rb
require 'sinatra'

# enable static files to be served outside of .public/ folder
set :public_folder, 'app'

# enable this site to be embedded as an iframe
configure do
    set :protection, except: [:frame_options]
end

get '/' do
  File.read('app/http_index.html')
end

get '/index' do
  File.read('app/index.html')
end

get '/hw1' do
  File.read("app/hw1.html")
end
# ----------------------PBL-----------------------------------

get '/pbl' do
  File.read("PBL/data_viewer.html")
end
# ---------------------Cantonese--------------------
get '/cantonese' do
  File.read("cantonese/data_viewer.html")
end
# # CRUD routes
# post '/' do
# #  .. create something ..
# end

# get '/' do
# #  .. read something ..
# end

# put '/' do
# #  .. update something ..
# end

# delete '/' do
# #  .. destroy something ..
# end
