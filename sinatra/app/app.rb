require 'sinatra'

configure { set :logging, false }

get '/:title' do
  @title = params[:title]

  @members = [
    { name: 'Serdar Dogruyol' }
  ]

  erb :index
end
