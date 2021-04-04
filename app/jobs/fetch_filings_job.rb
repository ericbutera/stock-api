##
# Fetch EDGAR filings
class FetchFilingsJob
  @queue = :fetch_filings_queue

  def self.perform
    s = Stock.where.not(cik: nil)
    s.each do |stock|
      puts "stock <#{stock.cik}>"
    end
  end

end
