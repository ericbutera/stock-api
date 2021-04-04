##
# Fetch EDGAR filing
class FetchJob
  @queue = :fetch_queue

  def self.perform(params)
    puts "hello from filing <#{params}>"
  end
end
