class MessageService
  def initialize(params)
    @page = params[:page]
  end

  def index
    Message.recent.page(@page).map { |message| MessagePresenter.new(message) }
  end

end
