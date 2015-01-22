require './test/test_helper'

class DeliciousBundleTest < Minitest::Test
  def test_exists
    assert Delicious::Bundle
  end

  def test_it_gives_back_a_bundle_of_tags
  	VCR.use_cassette('bundle') do
  		bundle = Delicious::Bundle.find
  		assert_equal Delicious::Bundle, bundle.class
  	end
  end
end