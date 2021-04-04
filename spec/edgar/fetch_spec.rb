require 'edgar/fetch'

RSpec.describe 'Edgar::FetchFiling' do
  it 'exists' do
    f = Edgar::FetchFiling
    expect(f).to be Edgar::FetchFiling
  end

  # TODO: figure out how to run these integration style
  it 'fetches' do
    stub_request(:get, 'https://data.sec.gov/submissions/CIK0001326380.json')
      # .with({})
      .to_return(status: 200, body: 'hi', headers: {})

    f = Edgar::FetchFiling.new
    res = f.fetch '0001326380'
    expect(res).to include '<title>GameStop Corp. (0001326380)</title>'
  end

  #it "parses" do
    #res = file_fixture "gme-filings.xml"
    #f.parse res 
    #expect(res).to eq "moo"
  #end

end
