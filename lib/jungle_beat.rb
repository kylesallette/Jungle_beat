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
  
end
