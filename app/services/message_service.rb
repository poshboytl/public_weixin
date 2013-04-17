class MessageService
  attr_reader :request, :by_hot, :page

  def initialize(request, params)
    @request = request
    @page = (params[:page] || 1).to_i
    @by_hot = !!params[:by_hot]
  end

  def index
    if by_hot
      messages = Message.by_vote.page(page)
    else
      messages = Message.recent.page(page)
    end
    messages.map { |message| MessagePresenter.new(request, message) }
  end
end
