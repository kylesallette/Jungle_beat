require 'pry'
require_relative 'node'


class LinkedList

  attr_accessor :head,
                :count

  def initialize
    @head = nil
    @count = 0
  end

  def prepend(data)
    position = @head
    @head = Node.new(data)
    @head.next_node = position
    @count += 1
    data
  end

  def append(data)
    position = @head
      if position.nil?
        @head = Node.new(data)
      else
        while position.next_node != nil
          position = position.next_node
        end
          position.next_node = Node.new(data)
      end
      @count += 1
      data
  end

  def to_string
    position = @head
    beats = "#{position.data}"
      until position.next_node.nil?
         beats << " #{position.next_node.data}"
         position = position.next_node
      end
    beats
  end

  def insert(index, data)
    position = @head
    (index - 1).times do
      position = position.next_node
    end
      node = Node.new(data)
      node.next_node = position.next_node
      position.next_node = node
      @count += 1
      data
  end

  def find(index, how_many)
    position = @head
    index - 1
    beats = "#{position.data}"
      index.times do
        position.next_node
        position = position.next_node
        beats = "#{position.data}"
      end
      how_many -= 1
      (how_many).times do
        position.next_node
        beats <<  " #{position.next_node.data}"
        position = position.next_node
      end
      beats
  end

  def includes?(input)
    position = @head
      if position.data == input
        return true
      end
        until position.next_node == nil
          position.next_node
          position = position.next_node
            if position.data == input
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
          if position.next_node.nil?
            beats = position.data
            position.data = nil
            break
          end
          if position.next_node.next_node.nil?
            beats  = position.next_node.data
            position.next_node = nil
          end
        end
       @count -= 1
       "The *#{beats}* beat has been removed!"
  end

end
