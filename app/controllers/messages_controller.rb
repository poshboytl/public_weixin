class MessagesController < ApplicationController
  def index
    @messages = MessageService.new(request, params).index
  end
end
