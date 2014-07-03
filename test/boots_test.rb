require 'helper'

class BootTest < MiniTest::Unit::TestCase
  def setup
    spyglass
  end
  
  def test_it_boots
    # If this returns `nil` then our process is still running, meaning
    # it hasn't crashed!
    refute Process.waitpid(@pid, Process::WNOHANG)
  end
end
