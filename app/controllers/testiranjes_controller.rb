class TestiranjesController < ApplicationController
  before_action :set_testiranje, only: %i[ show edit update destroy ]

  # GET /testiranjes or /testiranjes.json
  def index
    @testiranjes = Testiranje.all
  end

  # GET /testiranjes/1 or /testiranjes/1.json
  def show
  end

  # GET /testiranjes/new
  def new
    @testiranje = Testiranje.new
  end

  # GET /testiranjes/1/edit
  def edit
  end

  # POST /testiranjes or /testiranjes.json
  def create
    @testiranje = Testiranje.new(testiranje_params)

    respond_to do |format|
      if @testiranje.save
        format.html { redirect_to @testiranje, notice: "Testiranje was successfully created." }
        format.json { render :show, status: :created, location: @testiranje }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testiranje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testiranjes/1 or /testiranjes/1.json
  def update
    respond_to do |format|
      if @testiranje.update(testiranje_params)
        format.html { redirect_to @testiranje, notice: "Testiranje was successfully updated." }
        format.json { render :show, status: :ok, location: @testiranje }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testiranje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testiranjes/1 or /testiranjes/1.json
  def destroy
    @testiranje.destroy
    respond_to do |format|
      format.html { redirect_to testiranjes_url, notice: "Testiranje was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testiranje
      @testiranje = Testiranje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testiranje_params
      params.require(:testiranje).permit(:ime, :jmbg, :knjizica, :datum)
    end
end
