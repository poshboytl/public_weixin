class MessagesController < ApplicationController
  def index
    @messages = Message.recent.page(params[:page])
  end
end
