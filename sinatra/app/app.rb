require 'sinatra'

configure { set :logging, false }

get '/' do
  @title = params[:title]

  @members = [
    { name: 'Serdar Dogruyol' }
  ]

  erb :index
end