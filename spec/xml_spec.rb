require_relative 'spec_helper'

require 'nokogiri'

require 'open-uri'


describe 'xml html dome parse basic op' do

  before(:each) do

    @doc = Nokogiri::XML(open('data/books.xml'))

  end

  it 'should do something' do



    expect(@doc.xpath('//book[@id = "bk101"]/title').text).to  match("XML Developer's Guide")
    expect(@doc.xpath('//book[@id = "bk101"]/title').size).to   be(1)

  end
end