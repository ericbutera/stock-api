# frozen_string_literal: true

require 'resque/tasks'
require 'resque/scheduler/tasks'

task 'resque:setup' => :environment do
  Resque.schedule = YAML.load_file("#{Rails.root}/config/resque_schedule.yml")

  # TODO: this should be in .env
  # ENV['QUEUES'] = 'default,sleep,wake_up,run,fetch_filings_queue,emails_queue,fetch_queue'
  ENV['QUEUES'] = '*'
end
