class VotingService
  attr_reader :request, message

  def initialize(request, bizid, msgid)
    @request = request
    @message = Message.from_param(bizid, msgid)
  end

  def vote!
    voting = Voting.new(message.bizid, message.msgid)
    if voting.vote
      vote = Vote.find_or_create_from_message(message)
      vote.incr!
    end
  end
end
