require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/home' do
  @title = "蔵書管理"
  erb :home
end

get '/register' do
  @title = "登録"
  erb :register
end

get '/list' do
  @title = "一覧"
  erb :list
end
