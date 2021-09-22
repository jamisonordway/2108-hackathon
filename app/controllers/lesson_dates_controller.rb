class LessonDatesController < ApplicationController
  def index
    @lesson_dates = LessonDate.all
  end

  def show
    @lesson_date = LessonDate.find(params[:id])
  end
end
