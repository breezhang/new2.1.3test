require_relative 'spec_helper'

require_relative '../lib/book'

describe 'some simple test' do

  before(:each) do
     @book = Book.new('bree','Zh',3.24)
  end

  it 'must be not empty' do
    expect(@book).to be_an_instance_of(Book)
  end
end