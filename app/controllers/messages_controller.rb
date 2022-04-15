class MessagesController < ApplicationController
  def create
    @chat = Chat.find(params[:chat_id])
    @message = Message.new(message_params)
    @message.author = current_user
    @message.chat = @chat

    if @message.save
      redirect_to chat_path(@chat)
    else
      render "chats/#{@chat.id}"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
