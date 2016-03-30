class DashboardController < ApplicationController
  layout false

  def index
    @title = params[:title]

    @members = [
      { name: 'Serdar Dogruyol' },
      { name: 'Fatih Kadir Akin' },
      { name: 'Askin Gedik' },
      { name: 'Ary Borenszweig'}
    ]
  end
end
