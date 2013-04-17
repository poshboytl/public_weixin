redis_cache_url = ENV["REDIS_CACHE_NODES"] ? ENV["REDIS_CACHE_NODES"].split(/, */) : ['redis://localhost:6379/2']
REDIS_CACHE_OPTIONS = { nodes: redis_cache_url, driver: "hiredis" }
