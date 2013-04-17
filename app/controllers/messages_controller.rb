class MessagesController < ApplicationController
  def index
    @messages = MessageService.new(params).index
  end
end
