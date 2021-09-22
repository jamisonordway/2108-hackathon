class DatesController < ApplicationController
  def index
    @dates = Date.all
  end

  def show
    @date = Date.find(params[:id])
  end
end
