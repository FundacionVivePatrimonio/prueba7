class LeafletsController < ApplicationController
  before_action :set_leaflet, only: %i[ show edit update destroy ]

  # GET /leaflets or /leaflets.json
  def index
    @leaflets = Leaflet.all
  end

  # GET /leaflets/1 or /leaflets/1.json
  def show
  end

  # GET /leaflets/new
  def new
    @leaflet = Leaflet.new
  end

  # GET /leaflets/1/edit
  def edit
  end

  # POST /leaflets or /leaflets.json
  def create
    @leaflet = Leaflet.new(leaflet_params)

    respond_to do |format|
      if @leaflet.save
        format.html { redirect_to @leaflet, notice: "El Prospecto fue creado exitosamente" }
        format.json { render :show, status: :created, location: @leaflet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leaflet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaflets/1 or /leaflets/1.json
  def update
    respond_to do |format|
      if @leaflet.update(leaflet_params)
        format.html { redirect_to @leaflet, notice: "El Prospecto fue actualizado exitosamente" }
        format.json { render :show, status: :ok, location: @leaflet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leaflet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaflets/1 or /leaflets/1.json
  def destroy
    @leaflet.destroy
    respond_to do |format|
      format.html { redirect_to leaflets_url, notice: "El Prospecto fue eliminado exitosamente" }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaflet
      @leaflet = Leaflet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leaflet_params
      params.require(:leaflet).permit(:email, :name, :telephone, :status, :executive, :date, :conversation)
    end


end
