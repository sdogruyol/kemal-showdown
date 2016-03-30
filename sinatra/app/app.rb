require 'sinatra'

configure { set :logging, false }

get '/:title' do
  @title = params[:title]

  @members = [
    { name: 'Serdar Dogruyol' },
    { name: 'Fatih Kadir Akin' },
    { name: 'Askin Gedik' },
    { name: 'Ary Borenszweig'}
  ]

  erb :index
end
