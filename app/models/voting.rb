class Voting
  attr_reader :uid

  def initialize(bizid, msgid)
    @uid = "#{bizid}:#{msgid}"
  end

  def votable?(request)
    redis do |conn|
      !conn.sismember(key, request.ip)
    end
  end

  def vote(request)
    if votable?(request)
      redis do |conn|
        conn.sadd key, request.ip
      end
    else
      false
    end
  end

  def unvote(request)
    if votable?(request)
      false
    else
      redis do |conn|
        conn.srem key, request.ip
      end
    end
  end

  def voted_ips
    redis do |conn|
      conn.smembers key
    end
  end

  private

  def redis
    RedisService.redis do |conn|
      yield conn
    end
  end

  def key
    "voting:#{uid}"
  end
end
