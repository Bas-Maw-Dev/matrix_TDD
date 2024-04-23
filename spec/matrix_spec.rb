# frozen_string_literal: true

require 'matrix'

describe Matrix do
  describe 'Matrix accepts a (1 x 1) grid' do
    let(:matrix) { described_class.new('1') }

    it 'returns correct rows' do
      expect(matrix.rows).to eq([['1']])
    end

    it 'returns correct columns' do
      expect(matrix.columns).to eq([['1']])
    end
  end

  describe 'Matrix accepts a (2 x 2) grid' do
    let(:matrix) { described_class.new("1 2\n3 4") }

    it 'returns correct rows for a (2 x 2) grid' do
      expect(matrix.rows).to eq([%w[1 2], %w[3 4]])
    end
  end
end
