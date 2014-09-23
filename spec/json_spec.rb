require_relative 'spec_helper'

require 'json'

require 'yaml'

require_relative '../lib/books'

describe 'save json file' do

  before(:each) do
    @json_sample_data = YAML.load_file('data/list.yaml')["books"].to_json

    @ruby_object_json_data =YAML.load_file('data/list.yaml')["books"]

  end

  it 'serial data deserial' do
     File.open('data/list.json','w') do |f|
       begin
         f.write(@json_sample_data)

       rescue
         raise FileSaveError.new($!)
       end
     end


     expect(JSON.parse(File.read('data/list.json'))).to match(@ruby_object_json_data)
  end
end