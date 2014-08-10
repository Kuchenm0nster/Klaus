class DocumentsController < ApplicationController
  before_filter :authenticate_user!, :only => [:destroy, :edit, :update ]

  def index
    @documents_grid = initialize_grid(Document, include: [:lesson, :doc_type, :semester, :professor])
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to documents_path, notice: 'Document was successfully created.'
    else
      flash.now[:alert] = 'Document creation failed.'
      render 'new'
    end
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])

    if @document.update(document_update_params)
      redirect_to documents_path, notice: 'Document was successfully updated.'
    else
      flash.now[:alert] = 'Document update failed.'
      render 'new'
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    redirect_to documents_path, notice: 'Document was successfully destroyed.'
  end

private
  def document_params
    params.require(:document).permit(:doc_type_id, :semester_id, :professor_id, :file, :file_cache, :lesson_id)
  end

  def document_update_params
    params.require(:document).permit(:doc_type_id, :semester_id, :professor_id, :lesson_id)
  end
end
