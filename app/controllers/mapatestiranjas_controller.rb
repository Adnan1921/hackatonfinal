class MapatestiranjasController < ApplicationController
  before_action :set_mapatestiranja, only: %i[ show edit update destroy ]

  # GET /mapatestiranjas or /mapatestiranjas.json
  def index
    @mapatestiranjas = Mapatestiranja.all
  end

  # GET /mapatestiranjas/1 or /mapatestiranjas/1.json
  def show
  end

  # GET /mapatestiranjas/new
  def new
    @mapatestiranja = Mapatestiranja.new
  end

  # GET /mapatestiranjas/1/edit
  def edit
  end

  # POST /mapatestiranjas or /mapatestiranjas.json
  def create
    
    @mapatestiranja = Mapatestiranja.new(mapatestiranja_params)

    respond_to do |format|
      if @mapatestiranja.save
        format.html { redirect_to @mapatestiranja, notice: "Mapatestiranja was successfully created." }
        format.json { render :show, status: :created, location: @mapatestiranja }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mapatestiranja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mapatestiranjas/1 or /mapatestiranjas/1.json
  def update
    respond_to do |format|
      if @mapatestiranja.update(mapatestiranja_params)
        format.html { redirect_to @mapatestiranja, notice: "Mapatestiranja was successfully updated." }
        format.json { render :show, status: :ok, location: @mapatestiranja }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mapatestiranja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mapatestiranjas/1 or /mapatestiranjas/1.json
  def destroy
    @mapatestiranja.destroy
    respond_to do |format|
      format.html { redirect_to mapatestiranjas_url, notice: "Mapatestiranja was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mapatestiranja
      @mapatestiranja = Mapatestiranja.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mapatestiranja_params
      params.fetch(:mapatestiranja, {})
    end
end
