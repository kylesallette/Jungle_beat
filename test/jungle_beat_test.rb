require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "../lib/jungle_beat"
require_relative "../lib/node"


class JungleBeatTest < Minitest::Test

  def test_head_is_nil_by_default
    list = JungleBeat.new

    assert_nil list.head
  end

  def test_can_append_a_beat
    list = JungleBeat.new

    list.append("doop")

    assert_instance_of Node, list.head
    assert_equal "doop", list.head.beat
  end

  def test_can_append_five_beats
    list = JungleBeat.new

    list.append("plop")
    list.append("suu")
    list.append("dop")
    list.append("doop")
    list.append("moop")

    assert_instance_of Node, list.head
    assert_equal "plop", list.head.beat

    assert_instance_of Node, list.head
    assert_equal "suu", list.head.next_node.beat

    assert_instance_of Node, list.head
    assert_equal "dop", list.head.next_node.next_node.beat

    assert_instance_of Node, list.head
    assert_equal "doop", list.head.next_node.next_node.next_node.beat

    assert_instance_of Node, list.head
    assert_equal "moop", list.head.next_node.next_node.next_node.next_node.beat
  end

  def test_can_prepend_beat
    list = JungleBeat.new

    list.prepend("doop")

    assert_instance_of Node, list.head
    assert_equal "doop", list.head.beat
  end

  def test_can_append_and_prepend
    list = JungleBeat.new

    list.append("moop")
    list.prepend("boop")

    assert_instance_of Node, list.head
    assert_equal "boop", list.head.beat
    assert_equal "moop", list.head.next_node.beat
  end

  def test_insert
    list = JungleBeat.new

    list.append("boop")
    list.append("moop")
    list.insert(1, "ding")

    assert_instance_of Node, list.head
    assert_equal "boop", list.head.beat
    assert_equal "ding", list.head.next_node.beat
    assert_equal "moop", list.head.next_node.next_node.beat
  end

end
