class VakcinisanjesController < ApplicationController
  before_action :set_vakcinisanje, only: %i[ show edit update destroy ]

  # GET /vakcinisanjes or /vakcinisanjes.json
  def index
    @vakcinisanjes = Vakcinisanje.all
  end

  # GET /vakcinisanjes/1 or /vakcinisanjes/1.json
  def show
  end

  # GET /vakcinisanjes/new
  def new
    @vakcinisanje = Vakcinisanje.new
  end

  # GET /vakcinisanjes/1/edit
  def edit
  end

  # POST /vakcinisanjes or /vakcinisanjes.json
  def create
    @vakcinisanje = Vakcinisanje.new(vakcinisanje_params)

    respond_to do |format|
      if @vakcinisanje.save
        format.html { redirect_to @vakcinisanje, notice: "Vakcinisanje was successfully created." }
        format.json { render :show, status: :created, location: @vakcinisanje }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vakcinisanje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vakcinisanjes/1 or /vakcinisanjes/1.json
  def update
    respond_to do |format|
      if @vakcinisanje.update(vakcinisanje_params)
        format.html { redirect_to @vakcinisanje, notice: "Vakcinisanje was successfully updated." }
        format.json { render :show, status: :ok, location: @vakcinisanje }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vakcinisanje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vakcinisanjes/1 or /vakcinisanjes/1.json
  def destroy
    @vakcinisanje.destroy
    respond_to do |format|
      format.html { redirect_to vakcinisanjes_url, notice: "Vakcinisanje was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vakcinisanje
      @vakcinisanje = Vakcinisanje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vakcinisanje_params
      params.require(:vakcinisanje).permit(:ime, :jmbg, :knjizica, :datum)
    end
end
