# frozen_string_literal: true

class Note < ApplicationRecord
  belongs_to :stock
  validates_presence_of :note
end
