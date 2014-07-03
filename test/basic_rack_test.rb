require 'helper'
require 'excon'

class BasicRackTest < MiniTest::Unit::TestCase
  def setup
    spyglass
  end
  
  def test_it_responds
    response = Excon.get("http://0.0.0.0:#{PORT}/fuzzy")
    
    assert_equal 200, response.status, "Didn't get the right response code"
    assert_match /Hello world/, response.body, "Didn't get the right response body"
  end
end
