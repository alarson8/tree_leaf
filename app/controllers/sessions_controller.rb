class SessionsController < ApplicationController

  def index
    parsed_date = params[:date] || Date.today.to_s
    @sessions = Session.for_date(parsed_date)
    @date = Date.parse(parsed_date).strftime("%B %d, %Y")
  end

end
