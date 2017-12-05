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
    beats = "#{position.beat}"
      until position.next_node.nil?
         beats << " #{position.next_node.beat}"
          position = position.next_node
      end
    beats
  end

  def insert(index, beat)
    position = @head
    (index - 1).times do
      position = position.next_node
    end
    node = Node.new(beat)
    node.next_node = position.next_node
    position.next_node = node
    @count += 1
    beat
  end

  def find(index, how_many)
    position = @head
    index - 1
    beats = "#{position.beat}"
      index.times do
        position.next_node
        position = position.next_node
        beats = "#{position.beat}"
      end
      how_many -= 1
      (how_many).times do
        position.next_node
        beats <<  " #{position.next_node.beat}"
        position = position.next_node
      end
      beats
  end

  def includes?(input)
    position = @head
      if position.beat == input
        return true
      end
        until position.next_node == nil
          position.next_node
          position = position.next_node
          if position.beat == input
            return true
          end
        end
    return false
  end

  def pop
    position = @head
     return "No beats to remove." if position.nil?
      until position.next_node.nil?
        position.next_node
        position = position.next_node
          if position.next_node.next_node.nil?
            beats  = position.next_node.beat
            position.next_node = nil
          end
      end
     @count -= 1
     "The *#{beats}* beat has been removed!"
  end

end
