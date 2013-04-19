class MessagePresenter

  attr_reader :request, :message

  def initialize(request, message)
    @request = request
    @message = message
  end

  delegate :title, :images, :content, :bizid, :msgid, :url, to: :message

  def voted?
    service = VotingService.new(request, message.bizid, message.msgid)
    service.voted?
  end
end
