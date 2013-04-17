class MessageService
  attr_reader :request

  def initialize(request, params)
    @request = request
    @page = (params[:page] || 1).to_i
  end

  def index
    Message.recent.page(@page).map { |message| MessagePresenter.new(request, message) }
  end
end
