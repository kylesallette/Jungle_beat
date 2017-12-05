
require_relative 'linked_list'

class JungleBeat

  def initialize
    @list = LinkedList.new
  end

  def head
    @head
  end

  def list
    @list
  end

  def count
    @list.count
  end

  def append(beat)
    @list.append(beat)
  end

  def prepend(beat)
    @list.prepend(beat)
  end

  def insert(index, beat)
    @list.insert(index, beat)
  end

  def find(index, how_many)
    @list.find(index, how_many)
  end

  def to_string
    @list.to_string
  end

  def pop
    @list.pop
  end

  def includes?(beat)
    @list.includes?(beat)
  end

end
