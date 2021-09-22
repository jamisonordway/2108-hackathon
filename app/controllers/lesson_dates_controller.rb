class LessonDatesController < ApplicationController
  def index
    @lesson_dates = LessonDate.all
  end

  def show
    @lesson_date = LessonDate.find(params[:id])
  end

  def new
    @mod = Mod.find(params[:mod_id])
    @lesson_date = LessonDate.new
  end

  def create
    lesson_date = LessonDate.new(
      mod_id: params[:mod_id],
      time_of_day: params[:time_of_day]
    )

    if lesson_date.save
      zoom = ZoomApiService.new(
        params[:instructor_email],
        lesson_date.id
      )
      zoom.get_present
    else
      flash[:error] = lesson_date.errors.full_messages
      redirect_to :new
    end
  end
end
