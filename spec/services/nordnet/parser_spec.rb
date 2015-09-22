require 'rails_helper'

RSpec.describe Nordnet::Parser do
  class DummyOpener
    def call(path)
      open("spec/services/nordnet/files/#{file_name(path)}.html")
    end

    def file_name(path)
      return 'test_base' if path.include?('bolagsfakta')
      'test_key_numbers'
    end
  end

  let(:parser)    { described_class.new(DummyOpener.new) }
  let(:good_call) { parser.call('test') }

  it 'tests stuffs' do
    expect(good_call).to be_a(StockData)
  end

end