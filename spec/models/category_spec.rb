require 'spec_helper'

describe Category do
  it { should have_many :entries }
  it { should validate_presence_of :type }
  it { should validate_uniqueness_of :type }
end

