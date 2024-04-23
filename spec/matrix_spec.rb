class Matrix
  def initialize(string)
    @string = string
  end
  def rows
    @string
  end

  def columns
    @string
  end

end

describe 'Matrix accepts a (1 x 1) grid' do
  matrix = Matrix.new('1')
  it 'returns correct rows' do
    expect matrix.rows == [['1']]
  end

  it 'returns correct columns' do
    expect matrix.columns == [['1']]
  end
end


describe 'Matrix accepts a (2 x 2) grid' do
  matrix = Matrix.new('1 2\n3 4')
  it 'returns correct rows for a (2 x 2) grid' do
    expect matrix.rows == [['1', '2'], ['3', '4']]
  end
end
