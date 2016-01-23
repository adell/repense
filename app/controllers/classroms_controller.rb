class ClassromsController < ApplicationController
  before_action :set_classrom, only: [:show, :edit, :update, :destroy]

  # GET /classroms
  # GET /classroms.json
  def index
    @classroms = Classrom.all
  end

  # GET /classroms/1
  # GET /classroms/1.json
  def show
  end

  # GET /classroms/new
  def new
    @classrom = Classrom.new
  end

  # GET /classroms/1/edit
  def edit
  end

  # POST /classroms
  # POST /classroms.json
  def create
    @classrom = Classrom.new(classrom_params)

    respond_to do |format|
      if @classrom.save
        format.html { redirect_to classroms_url, notice: 'Classrom was successfully created.' }
        # format.json { render :show, status: :created, location: @classrom }
        format.json { head :no_content }
      else
        format.html { render :new }
        format.json { render json: @classrom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classroms/1
  # PATCH/PUT /classroms/1.json
  def update
    respond_to do |format|
      if @classrom.update(classrom_params)
        format.html { redirect_to @classrom, notice: 'Classrom was successfully updated.' }
        format.json { render :show, status: :ok, location: @classrom }
      else
        format.html { render :edit }
        format.json { render json: @classrom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classroms/1
  # DELETE /classroms/1.json
  def destroy
    @classrom.destroy
    respond_to do |format|
      format.html { redirect_to classroms_url, notice: 'Classrom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classrom
      @classrom = Classrom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classrom_params
      params.require(:classrom).permit(:student_id, :course_id)
    end
end
