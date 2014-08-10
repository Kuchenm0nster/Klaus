class DocTypesController < ApplicationController
  before_filter :authenticate_user!, :only => [:destroy, :edit, :update ]

  def index
    @doc_types_grid = initialize_grid(DocType)
  end

  def new
    @doc_type = DocType.new
  end

  def create
    @doc_type = DocType.new(doc_type_param)

    if @doc_type.save
      redirect_to documents_path, notice: 'DocType was successfully created.'
    else
      flash.now[:alert] = 'DocType creation failed.'
      render 'new'
    end
  end

  def edit
    @doc_type = DocType.find(params[:id])
  end

  def update
    @doc_type = DocType.find(params[:id])
    if @doc_type.update(doc_type_param)
      redirect_to doc_types_path, notice: 'DocType was successfully updated.'
    else
      flash.now[:alert] = 'DocType update failed.'
      render 'new'
    end
  end

  def destroy
    @doc_type = DocType.find(params[:id])
    @doc_type.destroy

    redirect_to doc_types_path, notice: 'DocType was successfully destroyed.'
  end
private
  def doc_type_param
    params.require(:doc_type).permit(:name)
  end
end
