require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "../lib/linked_list"
require_relative "../lib/node"


class LinkedListTest < Minitest::Test

  def test_head_is_nil_by_default
    list = LinkedList.new

    assert_nil list.head
  end

  def test_can_append_a_beat
    list = LinkedList.new

    list.append("doop")

    assert_instance_of Node, list.head
    assert_equal "doop", list.head.data
  end

  def test_count_starts_at_0
    list = LinkedList.new

    assert_equal 0 ,list.count
  end

  def test_counts_after_appending
    list = LinkedList.new

    list.append("doop")
    list.append("zing")
    list.append("bop")

    assert_equal 3, list.count
  end

  def test_can_append_five_beats
    list = LinkedList.new

    list.append("plop")
    list.append("suu")
    list.append("dop")
    list.append("doop")
    list.append("moop")

    assert_instance_of Node, list.head
    assert_equal "plop", list.head.data

    assert_instance_of Node, list.head
    assert_equal "suu", list.head.next_node.data

    assert_instance_of Node, list.head
    assert_equal "dop", list.head.next_node.next_node.data

    assert_instance_of Node, list.head
    assert_equal "doop", list.head.next_node.next_node.next_node.data

    assert_instance_of Node, list.head
    assert_equal "moop", list.head.next_node.next_node.next_node.next_node.data
  end

  def test_can_prepend_beat
    list = LinkedList.new

    list.prepend("doop")

    assert_instance_of Node, list.head
    assert_equal "doop", list.head.data
  end

  def test_can_append_and_prepend
    list = LinkedList.new

    list.append("moop")
    list.prepend("boop")

    assert_instance_of Node, list.head
    assert_equal "boop", list.head.data
    assert_equal "moop", list.head.next_node.data
  end

  def test_insert
    list = LinkedList.new

    list.append("boop")
    list.append("moop")
    list.insert(1, "ding")

    assert_instance_of Node, list.head
    assert_equal "boop", list.head.data
    assert_equal "ding", list.head.next_node.data
    assert_equal "moop", list.head.next_node.next_node.data
  end

  def test_find
    list = LinkedList.new

    list.append("moop")
    list.append("doop")
    list.append("deep")

    assert_equal "moop", list.find(0,0)
    assert_equal "deep", list.find(2,0)
  end

  def test_find_with_following_beats
    list = LinkedList.new

    list.append("moop")
    list.append("doop")
    list.append("ding")

    assert_equal "moop", list.find(0,1)
    assert_equal "doop ding", list.find(1,2)
  end

  def test_pop_beat
    list = LinkedList.new

    list.append("moop")
    list.append("doop")
    list.append("ding")

    assert_equal 3, list.count
    assert_equal "The *ding* beat has been removed!", list.pop
    assert_equal 2, list.count
  end

  def test_includes?
    list = LinkedList.new

    list.append("ding")
    list.append("ping")
    list.append("moop")

    assert_equal true, list.includes?("ding")
    assert_equal false, list.includes?("zip")
    assert_equal true, list.includes?("ping")
    assert_equal false, list.includes?("super")
  end

end
