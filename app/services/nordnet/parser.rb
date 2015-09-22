module Nordnet
  class Parser
    attr_reader :path_opener
    def initialize(path_opener = FileOpener.new)
      @path_opener = path_opener
    end
    def call(identifier)
      sd = InfoParser.new.call(info_page(identifier))
      NumbersParser.new.call(numbers_page(identifier), sd)
    end

    def self.url_to_identifier(url)
      url.match(/identifier=\d+/).to_s.match(/\d+/).to_s
    end

    private

    def info_page(identifier)
      open_page(build_url('bolagsfakta', identifier))
    end

    def numbers_page(identifier)
      open_page(build_url('nyckeltal', identifier))
    end

    def open_page(url)
      Nokogiri::HTML(path_opener.call(url))
    end

    def build_url(page, identifier)
      "https://www.nordnet.se/mux/web/marknaden/aktiehemsidan/#{page}.html?identifier=#{identifier}&marketplace=11&inhibitTrade=1"
    end
  end
end