require 'empty_exception'

class DbcQueue

  def initialize
    @storage = []
  end

  def empty?
    @storage.empty?
  end

  def enqueue(value)
    @storage << value
  end

  def dequeue
    raise ::EmptyException if empty?
    @storage.delete_at(0)
  end


end
