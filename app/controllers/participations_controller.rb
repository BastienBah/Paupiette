class ParticipationsController < ActionController::Base
  def show

  end

  def create
    @participation = Participation.new
    @participation.user = current_user
    @participation.repa = Repa.find(params[:repa_id])
    @participation.is_valid = false

    respond_to do |format|
      if @participation.save!
        format.html { redirect_to repas_path, notice: 'Votre participation a bien été prise en compte' }
        format.json { redirect_to repas_path, status: :created, location: repas_path }
      else
        format.html { redirect_to repas_path }
        format.json { render json: @participation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @participation = Participation.find(params[:id])
    @participation.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'La participation a bien été supprimé, envoyez un message pour prévenir.' }
      format.json { head :no_content }
    end
  end

  def validate
    @participation = Participation.find(params[:format])
    @participation.is_valid = true
      if @participation.save!
        redirect_to participation_path, notice: 'Votre validation a bien été prise en compte'
        #format.json { redirect_to participation_path}
      else
       redirect_to participation_path, notice: 'Réésayez plus tard'
      end
  end

end
