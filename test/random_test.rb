require 'test_helper'

class RandomTest < ActiveSupport::TestCase
  def test_random_tokens_are_indeed_random
    # this might fail if you are *really* unlucky :)
    assert_not_equal Authlogic::Random.hex_token,       Authlogic::Random.hex_token
    assert_not_equal Authlogic::Random.friendly_token,  Authlogic::Random.friendly_token
  end
end