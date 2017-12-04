class Node

  attr_accessor :beat,
                :next_node

  def initialize(beat)
    @beat = beat
    @next_node = nil
  end

end
