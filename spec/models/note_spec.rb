require 'rails_helper'

RSpec.describe Note, type: :model do
  it { should belong_to(:stock)}
  it { should validate_presence_of(:note) }
end
