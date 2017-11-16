class RepasController < ApplicationController
  before_action :set_repa, only: [:show, :edit, :update, :destroy]

  # GET /repas
  # GET /repas.json
  def index
    @repas = Repa.all
    @users = User.all
  end

  # GET /repas/1
  # GET /repas/1.json
  def show
    @user = User.find(@repa.user_id)
    @participations = Participation.where(repa_id: @repa.id)
  end

  # GET /repas/new
  def new
    @repa = Repa.new
  end

  # GET /repas/1/edit
  def edit
  end

  # POST /repas
  # POST /repas.json
  def create
    @repa = Repa.new(repa_params)
    @repa.user = current_user
    case @repa.menu
    when "1"
      @repa.menu = "Plat seulement"
      @repa.prix = 3
    when "2"
      @repa.menu = "Entrée + Plat"
      @repa.prix = 5
    when "3"
      @repa.menu = "Plat + Dessert"
      @repa.prix = 5
    when "4"
      @repa.menu = "Entrée + Plat + Dessert"
      @repa.prix = 7
    end

    #Validation prix repas

    respond_to do |format|
      if @repa.save
        format.html { redirect_to @repa, notice: 'Votre repas a bien été crée' }
        format.json { render :show, status: :created, location: @repa }
      else
        format.html { render :new }
        format.json { render json: @repa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repas/1
  # PATCH/PUT /repas/1.json
  def update
    respond_to do |format|
      if @repa.update(repa_params)
        format.html { redirect_to @repa, notice: 'Votre repas a bien été mis à jour' }
        format.json { render :show, status: :ok, location: @repa }
      else
        format.html { render :edit }
        format.json { render json: @repa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repas/1
  # DELETE /repas/1.json
  def destroy
    @repa.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: 'Votre repas a bien été supprimé' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repa
      @repa = Repa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repa_params
      params.require(:repa).permit(:titre, :descritpion, :date, :prix, :menu ,:entree, :places ,:plat, :dessert,:image)
    end
end
