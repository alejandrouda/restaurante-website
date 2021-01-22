require 'rails_helper'

RSpec.describe Restaurante, type: :model do
  it "is not valid without valid attributes" do
    expect(Restaurante.new).not_to be_valid
  end
  it "is not valid without a title" do
    expect(Restaurante.new).not_to be_valid
  end
  it "is not valid without a photo" do
    expect(Restaurante.new).not_to be_valid
  end
end
