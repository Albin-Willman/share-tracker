require 'rails_helper'
require 'dummy_opener'

RSpec.describe Nordnet::Parser do
  let(:parser)    { described_class.new(DummyOpener.new) }
  let(:good_call) { parser.call('test') }
  let(:attributes) {StockDatum::ATTRIBUTES}

  it 'returns a StockDatum' do
    expect(good_call).to be_a(StockDatum)
  end

  it 'returns a full StockDatum' do
    res = good_call
    attributes.each do |attribute|
      expect(res.public_send(attribute)).to_not be_nil
    end
  end

  context 'url_to_identifier' do
    let(:good_url) { 'https://www.nordnet.se/mux/web/marknaden/aktiehemsidan/index.html?identifier=101&marketid=11' }
    it 'it can find the identifier in a correct url' do
      expect(described_class.url_to_identifier(good_url)).to eq('101')
    end
  end
end
