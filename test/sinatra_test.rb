require 'helper'
require 'excon'

class SinatraTest < MiniTest::Unit::TestCase
  def setup
    config_ru <<-RU
      require 'sinatra'

      get '/zing' do
        redirect 'http://example.com'
      end

      run Sinatra::Application
    RU
    
    spyglass
  end

  def test_it_responds
    response = Excon.get("http://0.0.0.0:#{PORT}/zing")

    assert_equal 302, response.status, "Didn't get the right response code"
    assert_match /example/, response.headers['Location'], "Didn't get the right location header"
  end
end
