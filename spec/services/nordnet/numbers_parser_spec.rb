require 'rails_helper'
require 'dummy_opener'

RSpec.describe Nordnet::NumbersParser do
  
  let(:dummy_opener) { DummyOpener.new }
  let(:page) { Nokogiri::HTML(dummy_opener.call('__key_values__')) }
  let(:parser) { described_class.new }
  let(:good_call) { parser.call(page) }

  it 'returns a StockDatum' do
    expect(good_call).to be_a(StockDatum)
  end

  it 'finds the pe' do
    expect(good_call.pe).to eq(-533.33)
  end

  it 'finds the ps' do
    expect(good_call.ps).to eq(59.11)
  end

  it 'finds the price' do
    expect(good_call.price).to eq(240.0)
  end

  it 'finds the revinue' do
    expect(good_call.revinue).to eq(-144048)
  end

  it 'finds the sales' do
    expect(good_call.sales).to eq(233600)
  end

  it 'finds the dividend' do
    expect(good_call.dividend).to eq(0)
  end

  it 'finds the debt' do
    expect(good_call.debt).to eq(123_534)
  end

  it 'finds the pb' do
    expect(good_call.pb).to eq(46.6)
  end

end