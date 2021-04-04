require 'net/http'

module Edgar
  class FetchFiling
    def fetch(cik)
      # url = "https://data.sec.gov/rss?cik=#{cik}&count=40&output=atom"

      # TODO: rspec test!
      # cik must be zero padded 0001326380
      cik = cik.rjust(10, '0')

      url = "https://data.sec.gov/submissions/CIK#{cik}.json"

      uri = URI url
      resp = Net::HTTP.get uri
      puts "resp <#{resp[20]}>"
      resp
    end

    def parse(xml)
      puts "parsing #{xml[20]}"

      "oink"
    end
  end
end
