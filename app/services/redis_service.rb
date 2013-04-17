class RedisService
  def self.redis(&block)
    @redis ||= begin
                 RedisConnection.create(REDIS_CACHE_OPTIONS)
               end
    raise ArgumentError, "requires a block" if !block
    @redis.with(&block)
  end

  class RedisConnection
    def self.create(options={})
      nodes = options[:nodes] || ['redis://localhost:6379/0']
      driver = options[:driver] || 'ruby'
      # need a connection for Fetcher and Retry
      size = options[:size] || 50

      ConnectionPool.new(timeout: 5, size: size) do
        build_client(nodes, options[:namespace], driver)
      end
    end

    def self.build_client(nodes, namespace, driver)
      client = Redis.new(url: nodes.first, driver: driver)
      if namespace
        Redis::Namespace.new(namespace, redis: client)
      else
        client
      end
    end
    private_class_method :build_client
  end
end
