# frozen_string_literal: true

##
# exception catching to prevent deep nested control flow
module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      render json: { message: e.message }, status: :not_found
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      render json: { message: e.message }, status: :unprocessable_entity
    end
  end
end
