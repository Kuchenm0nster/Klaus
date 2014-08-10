class SemestersController < ApplicationController
  before_filter :authenticate_user!, :only => [:destroy, :edit, :update ]

  def index
    @semesters_grid = initialize_grid(Semester)
  end

  def new
    @semester = Semester.new
  end

  def create
    @semester = Semester.new(semester_params)

    if @semester.save
      redirect_to documents_path, notice: 'Semester was successfully created.'
    else
      flash.now[:alert] = 'Semester creation failed.'
      render 'new'
    end
  end

  def edit
    @semester = Semester.find(params[:id])
  end

  def update
    @semester = Semester.find(params[:id])
    if @semester.update(semester_params)
      redirect_to semesters_path, notice: 'Semester was successfully updated.'
    else
      flash.now[:alert] = 'Semester update failed.'
      render 'new'
    end
  end

  def destroy
    @semester = Semester.find(params[:id])
    @semester.destroy

    redirect_to semesters_path, notice: 'Semester was successfully destroyed.'
  end
private
  def semester_params
    params.require(:semester).permit(:name)
  end
end
