require_relative 'spec_helper'

require_relative '../lib/book'


require 'yaml'


describe 'simple test' do

  before(:each) do

    @books = []

    @list = YAML.load_file('data/list.yaml')

    @list["books"].each  do |e|
     # @books << Book.new(e["name"],e["author"],e["price"])
      @books << Book.new(e[:name],e[:author],e[:price])
    end
  end

  it 'should another test' do
    expect(@books.length).to be_between(0,3)
   # true.should == false
  end
end
