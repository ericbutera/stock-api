# Stock API Rails
* Goals
  * use resque to pull EDGAR data
    * insider trades
    * company filings
  * find a way to poll price for alterts
  * ui
    * notes
    * edgar insider filings
    * add stock/ticker/company 
      * there will be lots of changes here as more data gets added

## Testing
* [resque_spec](https://github.com/leshill/resque_spec)

## Research
* [build api](https://www.digitalocean.com/community/tutorials/build-a-restful-json-api-with-rails-5-part-one)
* [migrations](https://stackify.com/rails-migration-a-complete-guide/)
* [rspec rails](https://github.com/rspec/rspec-rails)
* [rails + docker](https://betterprogramming.pub/rails-6-development-with-docker-55437314a1ad)
* [rails + vscode](https://github.com/microsoft/vscode-recipes/blob/master/debugging-Ruby-on-Rails/README.md)
* [rails + vscode + container](https://github.com/SeanSith/rails-with-vscode-remote-containers)
* [resque setup](https://gist.github.com/Diasporism/5631030)

* [resque dashboard](http://localhost:3000/resque/overview )
* Run workers `QUEUE=* rake resque`

## EDGAR
* [CIK lookup](https://www.sec.gov/edgar/searchedgar/cik.htm)
    * Identifier that needs to be resolved for each company
* [Latest filings](https://www.sec.gov/cgi-bin/browse-edgar?action=getcurrent)
    * Add output=atom for rss
    * Paginated &start=40&count=40
* [Latest Company filings](https://data.sec.gov/rss?cik=1326380&count=40)
    * feed > entry
        * id
        * category type=4
        * link href=url
        * title
        * updated


# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
