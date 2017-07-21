require 'rails_helper'

RSpec.describe Park, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:description) }
end
