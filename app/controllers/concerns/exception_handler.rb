module ExceptionHandler
  extend ActiveSupport::Concern

  included do 
    rescue_from ActiveRecord::RecordNotFound do |e|
    end
  end
end