class DaysController < ApplicationController

  def show
    @day = Day.new(params)
  end

end
