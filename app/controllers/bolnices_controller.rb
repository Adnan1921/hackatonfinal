class BolnicesController < ApplicationController
  before_action :set_bolnice, only: %i[ show edit update destroy ]

  # GET /bolnices or /bolnices.json
  def index
    @bolnices = Bolnice.all
  end

  # GET /bolnices/1 or /bolnices/1.json
  def show
  end

  # GET /bolnices/new
  def new
    @bolnice = Bolnice.new
  end

  # GET /bolnices/1/edit
  def edit
  end

  # POST /bolnices or /bolnices.json
  def create
    @bolnice = Bolnice.new(bolnice_params)

    respond_to do |format|
      if @bolnice.save
        format.html { redirect_to @bolnice, notice: "Bolnice was successfully created." }
        format.json { render :show, status: :created, location: @bolnice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bolnice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bolnices/1 or /bolnices/1.json
  def update
    respond_to do |format|
      if @bolnice.update(bolnice_params)
        format.html { redirect_to @bolnice, notice: "Bolnice was successfully updated." }
        format.json { render :show, status: :ok, location: @bolnice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bolnice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bolnices/1 or /bolnices/1.json
  def destroy
    @bolnice.destroy
    respond_to do |format|
      format.html { redirect_to bolnices_url, notice: "Bolnice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bolnice
      @bolnice = Bolnice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bolnice_params
      params.require(:bolnice).permit(:naziv_ustanove, :broj, :lokacija, :vrijeme_cekanja, :radno_vrijeme, :odijeljenje, :avatar)
    end
end
