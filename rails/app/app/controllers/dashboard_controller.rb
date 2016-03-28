class DashboardController < ApplicationController
  layout false

  def index
    @title = params[:title]

    @members = [
      { name: 'Serdar Dogruyol' },
    ]
  end
end
