require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "../lib/node"

class NodeTest < Minitest::Test

  def test_has_beat
    node = Node.new("boop")

    assert_equal "boop", node.beat

  end

  def test_next_node_is_nil
    node = Node.new("Burke")

    assert_nil node.next_node
  end

end
