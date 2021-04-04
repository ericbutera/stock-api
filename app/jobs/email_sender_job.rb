# frozen_string_literal: true

class EmailSenderJob
  @queue = :emails_queue

  def self.perform(params)
    # code to send out emails
    puts "helllo from email sender <#{params}>"
    stock = Stock.first
    puts stock
  end
end
