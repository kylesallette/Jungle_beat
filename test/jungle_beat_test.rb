require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/jungle_beat"
require 'pry'



class JungleBeatTest < Minitest::Test

  def test_append
    jb = JungleBeat.new

    assert_equal "moop", jb.append("moop")
    assert_equal "toot", jb.append("toot")
    assert_equal "doop", jb.append("doop")
  end

  def test_prepend
    jb = JungleBeat.new

    jb.append("John")

    assert_equal "ding", jb.prepend("ding")
    assert_equal "zing", jb.prepend("zing")
    assert_equal "zap", jb.prepend("zap")
  end

  def test_insert
    jb = JungleBeat.new

    expected = "zing ding zap"

    jb.append("zing")
    jb.append("zap")
    jb.insert(1,"ding")

    assert_equal expected, jb.to_string
  end

  def test_to_string
    jb = JungleBeat.new

    expected = "zing zip ding"

    assert_equal "zing", jb.append("zing")
    assert_equal "zip", jb.append("zip")
    assert_equal "ding", jb.append("ding")

    assert_equal expected, jb.to_string
  end

  def test_includes?
    jb = JungleBeat.new


    jb.append("zip")
    jb.append("zap")
    jb.append("ding")

    assert_equal true, jb.includes?("zip")
    assert_equal true, jb.includes?("zap")
    assert_equal false, jb.includes?("dong")
    assert_equal true, jb.includes?("ding")
  end

  def test_pop
    jb = JungleBeat.new

    jb.append("zip")
    jb.append("zap")
    jb.append("dang")

    assert_equal "The *dang* beat has been removed!", jb.pop
    assert_equal 2, jb.count
  end

end
