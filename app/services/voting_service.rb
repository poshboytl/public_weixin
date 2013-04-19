class VotingService
  attr_reader :request, :message

  def initialize(request, bizid, msgid)
    @request = request
    @message = Message.from_param(bizid, msgid)
  end

  def vote!
    voting = Voting.new(message.bizid, message.msgid)
    if voting.vote(request)
      vote = Vote.find_or_create_from_message(message)
      vote.incr!
    end
  end

  def unvote!
    voting = Voting.new(message.bizid, message.msgid)
    if voting.unvote(request)
      vote = Vote.find_or_create_from_message(message)
      vote.decr!
    end
  end

  def voted?
    voting = Voting.new(message.bizid, message.msgid)
    !voting.votable?(request)
  end
end
