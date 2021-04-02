class EmailSender
  @queue = :emails_queue

  def self.perform(params)
    #code to send out emails
    puts "helllo from email sender!"
    ActiveRecord::Base.clear_active_connections!
    stock = Stock.first
    puts stock
  end
end