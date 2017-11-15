class ParticipationsController < ActionController::Base
  def show

  end

  def create
    @participation = Participation.new
    @participation.user = current_user
    @participation.repa = Repa.find(params[:repa_id])

    respond_to do |format|
      if @participation.save!
        format.html { redirect_to repas_path, notice: 'Merci ! Votre candidature a été bien été envoyé' }
        format.json { redirect_to repas_path, status: :created, location: repas_path }
      else
        format.html { redirect_to repas_path }
        format.json { render json: @participation.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete

  end

end
