class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end

end

class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
    el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end

end

class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    @map << [key, value] unless self.lookup(key)

    @map.each.with_index do |pair, i|
      @map[i] = [key, value] if pair == [key, value]
    end

    [key, value]
  end

  def lookup(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end

    nil
  end

  def remove(key)
    @map.each do |pair|
      return @map.delete(pair) if pair[0] == key
    end

    nil
  end

  def show
    @map.each do |pair|
      p pair.dup[0], pair.dup[1]
    end
  end

end
