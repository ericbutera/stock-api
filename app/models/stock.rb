# frozen_string_literal: true

class Stock < ApplicationRecord
  has_many :notes, dependent: :destroy
  validates_presence_of :title
end
