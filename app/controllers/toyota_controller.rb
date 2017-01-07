class ToyotaController < ApplicationController
  before_action :set_toyotum, only: [:show, :edit, :update, :destroy]

  # GET /toyota
  # GET /toyota.json
  def index
    @toyota = Toyotum.all
  end

  # GET /toyota/1
  # GET /toyota/1.json
  def show
  end

  # GET /toyota/new
  def new
    @toyotum = Toyotum.new
  end

  # GET /toyota/1/edit
  def edit
  end

  # POST /toyota
  # POST /toyota.json
  def create
    @toyotum = Toyotum.new(toyotum_params)

    respond_to do |format|
      if @toyotum.save
        format.html { redirect_to @toyotum, notice: 'Toyotum was successfully created.' }
        format.json { render :show, status: :created, location: @toyotum }
      else
        format.html { render :new }
        format.json { render json: @toyotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toyota/1
  # PATCH/PUT /toyota/1.json
  def update
    respond_to do |format|
      if @toyotum.update(toyotum_params)
        format.html { redirect_to @toyotum, notice: 'Toyotum was successfully updated.' }
        format.json { render :show, status: :ok, location: @toyotum }
      else
        format.html { render :edit }
        format.json { render json: @toyotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toyota/1
  # DELETE /toyota/1.json
  def destroy
    @toyotum.destroy
    respond_to do |format|
      format.html { redirect_to toyota_url, notice: 'Toyotum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toyotum
      @toyotum = Toyotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toyotum_params
      params.require(:toyotum).permit(:year, :model, :acceleration, :braking)
    end
end
