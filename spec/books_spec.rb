require_relative 'spec_helper'

require_relative '../lib/book'
require_relative '../lib/books'


require 'yaml'


describe 'simple test' do

  before(:each) do
    @books = -> {
      YAML.load_file('data/list.yaml')["books"].each do |e|
        Book.new(e[:name], e[:author], e[:price])
      end
    }

    @bookdb = Books.new(@books.call())
  end

  describe 'new some method' do
    it 'should another test' do
      # expect(@books.length).to be_between(0,3)
      expect(@books.call().length).to eq(3)
      # true.should == false
    end
  end

  describe 'collect element xxxx ' do
    it 'many books' do
      expect(@bookdb.find_book("gw")).to be_within(0.5).of(1)
    end
  end

end
