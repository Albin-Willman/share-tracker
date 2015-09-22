require "minitest/autorun"
require 'nokogiri'
puts Dir.pwd
require '/app/services/nordnet/base_parser'


puts Nordnet

# class TestNordnetInfoParser < Minitest::Test

#   def test_that_nordnet_can_be_called
#     assert_respond_to(parser, :call)
#   end

#   def test_that_nordnet_call_returns_stock_data
#     assert_instance_of(StockData, good_call)
#   end

#   def test_that_nordner_parser_finds_the_ceo
#     assert_equal('Jörgen Lantto', good_call.ceo)
#   end

#   def test_that_it_finds_the_industry
#     assert_equal('Elektronisk utrustning och komponenter', good_call.industry)
#   end

#   def test_that_it_finds_the_ticker
#     assert_equal('FING B·SE0000422107', good_call.ticker)
#   end

#   def test_the_market_cap
#     assert_equal(14498192400, good_call.market_cap)
#   end

#   def test_the_shares
#     assert_equal(60409135, good_call.shares)
#   end

#   def test_the_name
#     assert_equal('Fingerprint Cards AB ser. B', good_call.name)
#   end

#   def good_call
#     parser.call(page)
#   end

#   def page
#     Nokogiri::HTML(open('./test_base.html'))
#   end

#   def parser
#     Nordnet::InfoParser.new
#   end
# end

# class TestNordnetParser < Minitest::Test
#   def test_that_nordnet_can_be_called
#     assert_respond_to(parser, :call)
#   end

#   def test_that_nordnet_call_returns_stock_data
#     assert_instance_of(StockData, good_call)
#   end

#   def test_that_no_fields_are_null
#     res = good_call
#     StockData::ATTRIBUTES.each do |attribute|
#       if res.public_send(attribute).nil?
#         puts "Should not be nil #{attribute.to_s}"
#         assert_equal(false, true)
#       end
#     end
#   end

#   def good_call
#     parser.call(info_page, numbers_page)
#   end

#   def info_page
#     Nokogiri::HTML(open('./test_base.html'))
#   end
  
#   def numbers_page
#     Nokogiri::HTML(open('./test_key_numbers.html'))
#   end

#   def parser
#     Nordnet::Parser.new
#   end
# end

# class TestNordnetNumbersParser < Minitest::Test

#   def test_that_nordnet_can_be_called
#     assert_respond_to(parser, :call)
#   end

#   def test_that_nordnet_call_returns_stock_data
#     assert_instance_of(StockData, good_call)
#   end

#   def test_the_pe
#     assert_equal(-533.33, good_call.pe)
#   end

#   def test_the_ps
#     assert_equal(59.11, good_call.ps)
#   end

#   def test_the_price
#     assert_equal(240.0, good_call.price)
#   end

#   def test_the_revinue
#     assert_equal(-144048, good_call.revinue)
#   end

#   def test_the_sales
#     assert_equal(233600, good_call.sales)
#   end

#   def test_the_dividend
#     assert_equal(0, good_call.dividend)
#   end

#   def test_the_debt
#     assert_equal(123_534, good_call.debt)
#   end

#   def test_the_pb
#     assert_equal(46.6, good_call.pb)
#   end

#   def good_call
#     parser.call(page)
#   end

#   def page
#     Nokogiri::HTML(open('./test_key_numbers.html'))
#   end

#   def parser
#     Nordnet::NumbersParser.new
#   end
# end


