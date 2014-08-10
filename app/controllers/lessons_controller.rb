class LessonsController < ApplicationController
  before_filter :authenticate_user!, :only => [:destroy, :edit, :update ]

  def index
    @lessons_grid = initialize_grid(Lesson)
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)

    if @lesson.save
      redirect_to documents_path, notice: 'Lesson was successfully created.'
    else
      flash.now[:alert] = 'Lesson creation failed.'
      render 'new'
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to lessons_path, notice: 'Lesson was successfully updated.'
    else
      flash.now[:alert] = 'Lesson update failed.'
      render 'new'
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy

    redirect_to lessons_path, notice: 'Lesson was successfully destroyed.'
  end
private
  def lesson_params
    params.require(:lesson).permit(:name, :short_name)
  end
end
