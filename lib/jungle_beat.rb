require 'pry'
require_relative 'node'


class JungleBeat

  attr_accessor :head,
                :count

  def initialize
    @head = nil
    @count = 0
  end

  def prepend(beat)
    position = @head
    @head = Node.new(beat)
    @head.next_node = position
    @count += 1
    beat
  end

  def append(beat)
    position = @head
      if position.nil?
        @head = Node.new(beat)
      else
        while position.next_node != nil
          position = position.next_node
        end
          position.next_node = Node.new(beat)
      end
      @count += 1
      beat
  end

  def to_string
    position = @head
    beats = position.beat
      until position.next_node.nil?
         beats << " #{position.next_node.beat}"
          position = position.next_node
      end
    beats
  end

  def insert(index, surname)
    position = @head
    (index - 1).times do
      position = position.next_node
    end
    node = Node.new(surname)
    node.next_node = position.next_node
    position.next_node = node
    @count += 1
    surname
  end

end
