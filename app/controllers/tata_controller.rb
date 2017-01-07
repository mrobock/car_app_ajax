class TataController < ApplicationController
  before_action :set_tatum, only: [:show, :edit, :update, :destroy]

  # GET /tata
  # GET /tata.json
  def index
    @tata = Tatum.all
  end

  # GET /tata/1
  # GET /tata/1.json
  def show
  end

  # GET /tata/new
  def new
    @tatum = Tatum.new
  end

  # GET /tata/1/edit
  def edit
  end

  # POST /tata
  # POST /tata.json
  def create
    @tatum = Tatum.new(tatum_params)

    respond_to do |format|
      if @tatum.save
        format.html { redirect_to @tatum, notice: 'Tatum was successfully created.' }
        format.json { render :show, status: :created, location: @tatum }
      else
        format.html { render :new }
        format.json { render json: @tatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tata/1
  # PATCH/PUT /tata/1.json
  def update
    respond_to do |format|
      if @tatum.update(tatum_params)
        format.html { redirect_to @tatum, notice: 'Tatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tatum }
      else
        format.html { render :edit }
        format.json { render json: @tatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tata/1
  # DELETE /tata/1.json
  def destroy
    @tatum.destroy
    respond_to do |format|
      format.html { redirect_to tata_url, notice: 'Tatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tatum
      @tatum = Tatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tatum_params
      params.require(:tatum).permit(:year, :model, :acceleration, :braking)
    end
end
