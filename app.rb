require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: './db/books.db'
)

class Book < ActiveRecord::Base
end

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
  @books = Book.all
  erb :list
end
