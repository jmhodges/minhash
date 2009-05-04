require "test/unit"
require "rubygems"
require "minhash"

class TestMinHash < Test::Unit::TestCase
  def test_minhash_works
    m = MinHash.minhash(["foo", "bar", "baz"], 23)
    assert_equal 1157430835185436796, m
    
    m = MinHash.minhash(["bar", "foo", "baz"], 23)
    assert_equal 1157430835185436796, m
    
    m = MinHash.minhash(["baz", "bar", "foo"], 23)
    assert_equal 1157430835185436796, m
  end
end
