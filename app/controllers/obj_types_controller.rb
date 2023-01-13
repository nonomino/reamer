class ObjTypesController < ApplicationController
  before_action :set_obj_type, only: %i[ show edit update destroy ]

  # GET /obj_types or /obj_types.json
  def index
    @obj_types = ObjType.all
  end

  # GET /obj_types/1 or /obj_types/1.json
  def show
  end

  # GET /obj_types/new
  def new
    @obj_type = ObjType.new
  end

  # GET /obj_types/1/edit
  def edit
  end

  # POST /obj_types or /obj_types.json
  def create
    @obj_type = ObjType.new(obj_type_params)

    respond_to do |format|
      if @obj_type.save
        format.html { redirect_to obj_type_url(@obj_type), notice: "Obj type was successfully created." }
        format.json { render :show, status: :created, location: @obj_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @obj_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obj_types/1 or /obj_types/1.json
  def update
    respond_to do |format|
      if @obj_type.update(obj_type_params)
        format.html { redirect_to obj_type_url(@obj_type), notice: "Obj type was successfully updated." }
        format.json { render :show, status: :ok, location: @obj_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @obj_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obj_types/1 or /obj_types/1.json
  def destroy
    @obj_type.destroy

    respond_to do |format|
      format.html { redirect_to obj_types_url, notice: "Obj type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obj_type
      @obj_type = ObjType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def obj_type_params
      params.require(:obj_type).permit(:type, :max_length)
    end
end
