class MercsController < ApplicationController
  before_action :set_merc, only: [:show, :edit, :update, :destroy]

  # GET /mercs
  # GET /mercs.json
  def index
    @mercs = Merc.all
  end

  # GET /mercs/1
  # GET /mercs/1.json
  def show
  end

  # GET /mercs/new
  def new
    @merc = Merc.new
  end

  # GET /mercs/1/edit
  def edit
  end

  # POST /mercs
  # POST /mercs.json
  def create
    @merc = Merc.new(merc_params)

    respond_to do |format|
      if @merc.save
        format.html { redirect_to @merc, notice: 'Merc was successfully created.' }
        format.json { render :show, status: :created, location: @merc }
      else
        format.html { render :new }
        format.json { render json: @merc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mercs/1
  # PATCH/PUT /mercs/1.json
  def update
    respond_to do |format|
      if @merc.update(merc_params)
        format.html { redirect_to @merc, notice: 'Merc was successfully updated.' }
        format.json { render :show, status: :ok, location: @merc }
      else
        format.html { render :edit }
        format.json { render json: @merc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mercs/1
  # DELETE /mercs/1.json
  def destroy
    @merc.destroy
    respond_to do |format|
      format.html { redirect_to mercs_url, notice: 'Merc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merc
      @merc = Merc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merc_params
      params.require(:merc).permit(:name, :price)
    end
end
