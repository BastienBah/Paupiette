class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.sender_id = current_user.id

    #Validation prix repas

    respond_to do |format|
      if @message.save
        format.html { redirect_to root_path, notice: 'Message was successfully sended.' }
        format.json { render :show, status: :created, location: root_path }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:message, :dest_id)
  end
end
