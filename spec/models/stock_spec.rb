require 'rails_helper'

RSpec.describe Stock, type: :model do
  it { should have_many(:notes).dependent(:destroy) }
  it { should validate_presence_of(:title)}
end
