class ProfessorsController < ApplicationController
  before_filter :authenticate_user!, :only => [:destroy, :edit, :update ]

  def index
    @professors_grid = initialize_grid(Professor)
  end

  def new
    @professor = Professor.new
  end

  def create
    @professor = Professor.new(professor_params)

    if @professor.save
      redirect_to documents_path, notice: 'Professor was successfully created.'
    else
      flash.now[:alert] = 'Professor creation failed.'
      render 'new'
    end
  end
  def edit
    @professor = Professor.find(params[:id])
  end

  def update
    @professor = Professor.find(params[:id])
    if @professor.update(professor_params)
      redirect_to professors_path, notice: 'Professor was successfully updated.'
    else
      flash.now[:alert] = 'Professor update failed.'
      render 'new'
    end
  end

  def destroy
    @professor = Professor.find(params[:id])
    @professor.destroy

    redirect_to professors_path, notice: 'Professor was successfully destroyed.'
  end
private
  def professor_params
    params.require(:professor).permit(:first_name, :last_name)
  end
end
