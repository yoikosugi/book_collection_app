require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: './db/books.db'
)

class Book < ActiveRecord::Base
  validates :bookname, presence: true
  validates :author, presence: true
  validates :publisher, presence: true
  validates :points, numericality: {greater_than: 0}
end

get '/home' do
  @title = "蔵書管理"
  erb :home
end

get '/register' do
  @title = "登録"
  erb :register
end

post '/create' do
  Book.create(
    bookname: params[:bookname],
    author: params[:author],
    publisher: params[:publisher],
    points: params[:points]
  )
  redirect to('register')
end

get '/list' do
  @title = "一覧"
  @books = Book.all
  erb :list
end

post '/destroy' do
  Book.find(params[:id]).destroy
end
