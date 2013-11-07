require 'spec_helper'

EXAMPLE_RESPONSE=<<__END_EXAMPLE_RESPONSE__
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE hotbits SYSTEM
    "http://www.fourmilab.ch/hotbits/hotbits.dtd">
<hotbits version="1.0">
  <status version="1.0" result="200">OK</status>
    <request-information version="1.0">
    <server-version>Release 3.2, June 2008</server-version>
    <generation-time>2013-11-07T00:47:24Z</generation-time>
    <bytes-requested>4</bytes-requested>
    <bytes-returned>4</bytes-returned>
    <quota-requests-remaining>119</quota-requests-remaining>
    <quota-bytes-remaining>12284</quota-bytes-remaining>
  </request-information>
  <random-data version="1.0">
    E2 FF 00 B2
  </random-data>
</hotbits>
__END_EXAMPLE_RESPONSE__

describe Hotbits do
  before do
    Hotbits.stub(:raw).with(4).and_return(EXAMPLE_RESPONSE)
  end

  describe '#ascii' do
    it 'should return just the random bytes, separated by spaces' do
      Hotbits.ascii(4).should == 'E2 FF 00 B2'
    end
  end

  describe '#bytes' do
    it 'should return the four random bytes above' do
      Hotbits.bytes(4).should == [0xE2, 0xFF, 0x00, 0xB2]
    end
  end
end
