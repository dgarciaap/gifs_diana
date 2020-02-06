require "test_helper"

class GifsDianaTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GifsDiana::VERSION
  end
  
  def test_it_does_something_useful
	  assert true
  end

  #def test_success_status_code
    #response = GifsDiana.find_by_id(368)  
    #assert_equal "#<Net::HTTPOK 200 OK readbody=true>", response.response
  #end
end
