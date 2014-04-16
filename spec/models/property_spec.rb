require 'spec_helper'

describe Property do
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }
end
