require 'spec_helper'

describe Property do
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }

  it { should belong_to :user }
  it { should have_many :reservations }
  it { should have_many :reviews }
end
