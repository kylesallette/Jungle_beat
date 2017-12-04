require 'pry'
require_relative 'node'


class JungleBeat

  attr_accessor :head,
                :count

  def initialize
    @head = nil
    @count = 0
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

  def prepend(beat)
    position = @head
    @head = Node.new(beat)
    @head.next_node = position
    @count += 1
    beat
  end
  binding.pry
end
