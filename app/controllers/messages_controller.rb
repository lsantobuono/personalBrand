class MessagesController < ApplicationController
  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(message_params)
    if @message.valid?
      MessageMailer.message_me(@message).deliver_now
  		flash.now[:info] = "Mensaje Enviado. Gracias por contactarnos."
      render "static_pages/#{session["contact_origin"]}"
    else
      render "static_pages/#{session["contact_origin"]}"
    end
  end


  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end

end
