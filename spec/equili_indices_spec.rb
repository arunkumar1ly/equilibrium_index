require "spec_helper"
require_relative "../bin/equili_indices"

describe '#equili_indices' do
  it "should return equilibrium_indices" do
    sample_array = [-7, 1, 5, 2, -4, 3, 0]
    expect(equili_indices(sample_array)).to eq [3, 6]
  end

  it "should return equilibrium_indices" do
    sample_array = [0]
    expect(equili_indices(sample_array)).to eq [0]
  end
end
