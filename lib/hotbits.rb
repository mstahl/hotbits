require 'nokogiri'
require 'open-uri'

Dir[File.join(File.dirname(__FILE__), 'lib', '**', '*.rb')].each {|f| require f}

module Hotbits
  BASE_URI = "https://www.fourmilab.ch/cgi-bin/Hotbits?fmt=xml&"

  def self.ascii(count = 4)
    doc = Nokogiri::XML.parse(raw(count))
    doc.css('random-data')[0].content.strip
  end

  def self.bytes(count = 4)
    ascii(count).split.map{|s| s.to_i(16)}
  end

  private

  def self.raw(count = 4)
    open(BASE_URI + "nbytes=#{count}").read
  end
end
