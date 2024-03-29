class DocumentsController < ApplicationController
  before_action :set_document, only: %i[ show edit update destroy ]
  def index
    @documents = Document.all
  end
  def show
  rescue ActiveRecord::RecordNotFound
  flash[:notice] = "Document doesn't exist"
  redirect_to :action => 'index'
  end
  def new
    @document = Document.new
  end
  def edit
  end
  def create
    @document = Document.create!(document_params)
    respond_to do |format|
      if @document.save
        format.html { redirect_to document_url(@document), notice: "Document was successfully created." }
        format.json { render :show, status: :created, location: @document }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to document_url(@document), notice: "Document was successfully updated." }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url, notice: "Document was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  private
    def set_document
      @document = Document.find(params[:id])
      rescue ActiveRecord::RecordNotFound
  flash[:notice] = "Document doesn't exist"
  redirect_to :action => 'index'
    end
    
    def document_params
      params
    .require(:document)
    .permit(:title, :file, :folder_id, :tag_id, :obj_type_id)
    end
end
