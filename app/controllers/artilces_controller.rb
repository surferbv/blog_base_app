class ArtilcesController < ApplicationController
  before_action :set_artilce, only: [:show, :edit, :update, :destroy]

  # GET /artilces
  # GET /artilces.json
  def index
    @artilces = Artilce.all
  end

  # GET /artilces/1
  # GET /artilces/1.json
  def show
  end

  # GET /artilces/new
  def new
    @artilce = Artilce.new
  end

  # GET /artilces/1/edit
  def edit
  end

  # POST /artilces
  # POST /artilces.json
  def create
    @artilce = Artilce.new(artilce_params)

    respond_to do |format|
      if @artilce.save
        format.html { redirect_to @artilce, notice: 'Artilce was successfully created.' }
        format.json { render :show, status: :created, location: @artilce }
      else
        format.html { render :new }
        format.json { render json: @artilce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artilces/1
  # PATCH/PUT /artilces/1.json
  def update
    respond_to do |format|
      if @artilce.update(artilce_params)
        format.html { redirect_to @artilce, notice: 'Artilce was successfully updated.' }
        format.json { render :show, status: :ok, location: @artilce }
      else
        format.html { render :edit }
        format.json { render json: @artilce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artilces/1
  # DELETE /artilces/1.json
  def destroy
    @artilce.destroy
    respond_to do |format|
      format.html { redirect_to artilces_url, notice: 'Artilce was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artilce
      @artilce = Artilce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artilce_params
      params.require(:artilce).permit(:title, :text)
    end
end
