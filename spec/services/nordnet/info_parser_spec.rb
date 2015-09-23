require 'rails_helper'
require 'dummy_opener'

RSpec.describe Nordnet::InfoParser do
  
  let(:dummy_opener) { DummyOpener.new }
  let(:page) { Nokogiri::HTML(dummy_opener.call('__bolagsfakta__')) }
  let(:parser) { described_class.new }
  let(:good_call) { parser.call(page) }


  it 'returns a StockDatum' do
    expect(good_call).to be_a(StockDatum)
  end

  it 'finds the ceo' do
    expect(good_call.ceo).to eq('Jörgen Lantto')
  end

  it 'finds the industry' do
    expect(good_call.industry).to eq('Elektronisk utrustning och komponenter')
  end

  it 'finds the ticker' do
    expect(good_call.ticker).to eq('FING B·SE0000422107')
  end

  it 'finds the market_cap' do
    expect(good_call.market_cap).to eq(14498192400)
  end

  it 'finds the shares' do
    expect(good_call.shares).to eq(60409135)
  end

  it 'finds the name' do
    expect(good_call.name).to eq('Fingerprint Cards AB ser. B')
  end
end