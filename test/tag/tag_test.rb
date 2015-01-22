require './test/test_helper'

class DeliciousTagTest < Minitest::Test
  def test_exists
    assert Delicious::Tag
  end

  def test_it_gives_back_a_list_of_links_for_one_tag
  	VCR.use_cassette('tag') do
      tag = Delicious::Tag.find('fromtwitter')
  		assert_equal Delicious::Tag, tag.class
      assert_equal 'fromtwitter', tag.tag
  	end
  end
end