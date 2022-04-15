class ChatsController < ApplicationController
  def show
    @chat = Chat.find(params[:id])
    @message = Message.new
    @messages = Message.where(chat: @chat)
  end

end
