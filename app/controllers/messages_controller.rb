class MessagesController < ApplicationController
  def index
    @messages = Message.latest
  end
end
