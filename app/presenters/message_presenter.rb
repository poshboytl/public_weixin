class MessagePresenter

  attr_reader :message

  def initialize(message)
    @message = message
  end

  delegate :title, :images, :content, to: :message

end
