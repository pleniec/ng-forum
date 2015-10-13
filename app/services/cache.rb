module Cache
  def self.client
    @@client ||= Redis.new
  end
end
