class OdistsController < ApplicationController
  before_action :set_odist, only: [:show, :edit, :update, :destroy]

  # GET /odists
  # GET /odists.json
  def index
    @odists = Odist.all
  end

  # GET /odists/1
  # GET /odists/1.json
  def show
  end

  # GET /odists/new
  def new
    @odist = Odist.new
  end

  # GET /odists/1/edit
  def edit
  end

  # POST /odists
  # POST /odists.json
  def create
    @odist = Odist.new(odist_params)

    respond_to do |format|
      if @odist.save
        format.html { redirect_to @odist, notice: 'Odist was successfully created.' }
        format.json { render :show, status: :created, location: @odist }
      else
        format.html { render :new }
        format.json { render json: @odist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /odists/1
  # PATCH/PUT /odists/1.json
  def update
    respond_to do |format|
      if @odist.update(odist_params)
        format.html { redirect_to @odist, notice: 'Odist was successfully updated.' }
        format.json { render :show, status: :ok, location: @odist }
      else
        format.html { render :edit }
        format.json { render json: @odist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odists/1
  # DELETE /odists/1.json
  def destroy
    @odist.destroy
    respond_to do |format|
      format.html { redirect_to odists_url, notice: 'Odist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_odist
      @odist = Odist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def odist_params
      params.require(:odist).permit(:poetry)
    end
end
