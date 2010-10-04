require 'test_helper'

class BookmarkletTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Bookmarklet.new.valid?
  end
end
