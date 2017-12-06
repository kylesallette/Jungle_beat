
require_relative 'linked_list'

class JungleBeat

  attr_accessor :rate,
                :voice

  def initialize
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
  end

  def play
     beats = @list.to_string
    `say -r #{rate} -v #{voice} #{beats}`
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
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

  def append(data)
     beats = data.split(" ")
    beats.each do |sound|
      @list.append(sound)
    end
  end

  def prepend(data)
    beats = data.split(" ")
    beats.each do |sound|
      @list.prepend(sound)
    end
  end

  def insert(index, data)
    @list.insert(index, data)
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

  def includes?(data)
    @list.includes?(data)
  end

end
