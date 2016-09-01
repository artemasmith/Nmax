require 'spec_helper'

describe NMax do
  it 'has a version number' do
    expect(NMax::VERSION).not_to be nil
  end

  let(:bigger) { return '99999999' }
  let(:smaller) { return '12312'}
  let(:smaller_same_size) { return '99999998'}
  it 'does something useful' do
    expect(NMax.show_n_max([smaller, bigger, smaller_same_size],1)).to eq([bigger.to_i])
    expect(NMax.show_n_max([smaller, bigger, smaller_same_size],2)).to eq([smaller_same_size.to_i, bigger.to_i])
  end
end

