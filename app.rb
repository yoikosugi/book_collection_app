require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/home' do
  @title = "蔵書管理"
  erb :home
end

get '/register' do
end

get '/list' do
end
